package;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.SizeT;
import cpp.StdVector;
import cpp.UInt8;

import haxe.Resource;
import haxe.io.Bytes;
import haxe.io.BytesData;

import rogue.internal.MainLoop;
import rogue.internal.externs.SDL;
import rogue.internal.externs.openal.AL;
import rogue.media.AudioManager;
import rogue.media.buffer.AudioBuffer;
#if (android || rpi || iphone)
import rogue.internal.externs.opengl.gles2.GL;
import rogue.internal.externs.opengl.gles2.Glad;
#else
import rogue.internal.externs.opengl.gl.GL;
import rogue.internal.externs.opengl.gl.Glad;
#end

@:access(rogue.internal.MainLoop)
@:access(rogue.media.AudioManager)
@:buildXml("<include name=\"${haxelib:rogue}/project/IncludeLibrary.xml\" />")
class Main
{
	static final WINDOW_WIDTH:Int = 1280;
	static final WINDOW_HEIGHT:Int = 720;

	static var window:RawPointer<SDL_Window>;

	@:unreflective
	static var glContext:SDL_GLContext;

	static var shaderProgram:GLuint = 0;
	static var vertexArray:GLuint = 0;
	static var vertexBufferObject:GLuint = 0;

	static var alBuffers:StdVector<ALuint>;
	static var alSources:StdVector<ALuint>;

	static var running:Bool = true;

	static function isExtensionSupported(extensionName:String):Bool
	{
		var numExtensions:GLint = 0;

		GL.getIntegerv(GL.NUM_EXTENSIONS, Pointer.addressOf(numExtensions).raw);

		for (i in 0...numExtensions)
		{
			final ext:ConstGLcharStar = cast GL.getStringi(GL.EXTENSIONS, i);

			if (ext != null && ext.toString() == extensionName)
			{
				return true;
			}
		}

		return false;
	}

	static function createGLVertexArray():GLuint
	{
		var vertexArray:GLuint = 0;
		GL.genVertexArrays(1, Pointer.addressOf(vertexArray).raw);
		return vertexArray;
	}

	static function createGLBuffer():GLuint
	{
		var vertexBufferObject:GLuint = 0;
		GL.genBuffers(1, Pointer.addressOf(vertexBufferObject).raw);
		return vertexBufferObject;
	}

	static function createGLProgram(vertexShader:GLuint, fragmentShader:GLuint):GLuint
	{
		var shaderProgram:GLuint = GL.createProgram();

		GL.attachShader(shaderProgram, vertexShader);
		GL.attachShader(shaderProgram, fragmentShader);

		{
			GL.linkProgram(shaderProgram);

			final log:Null<String> = checkProgramLinking(shaderProgram);

			if (log != null && log.length > 0)
			{
				SDL.ShowSimpleMessageBox(SDL.MESSAGEBOX_ERROR, "Program Error", log, window);
				Sys.exit(1);
			}

			GL.useProgram(shaderProgram);
		}

		GL.deleteShader(vertexShader);
		GL.deleteShader(fragmentShader);

		return shaderProgram;
	}

	static function createGLShader(type:GLenum, source:ConstGLcharStar):GLuint
	{
		var shader:GLuint = GL.createShader(type);

		GL.shaderSource(shader, 1, Pointer.addressOf(source).raw, null);
		GL.compileShader(shader);

		final log:Null<String> = checkShaderCompilation(shader);

		if (log != null && log.length > 0)
		{
			SDL.ShowSimpleMessageBox(SDL.MESSAGEBOX_ERROR, "Shader Error", log, window);
			Sys.exit(1);
		}

		return shader;
	}

	static function checkShaderCompilation(shader:GLuint):Null<String>
	{
		var success:GLint = 0;

		GL.getShaderiv(shader, GL.COMPILE_STATUS, Pointer.addressOf(success).raw);

		if (success == 0)
		{
			var infoLog:CastGLcharStar = untyped __cpp__('new GLchar[1024]');

			GL.getShaderInfoLog(shader, 1024, null, infoLog);

			final infoLogStr:String = new String(untyped infoLog);

			untyped __cpp__('delete[] {0}', infoLog);

			return infoLogStr;
		}

		return null;
	}

	static function checkProgramLinking(program:GLuint):Null<String>
	{
		var success:GLint = 0;

		GL.getProgramiv(program, GL.LINK_STATUS, Pointer.addressOf(success).raw);

		if (success == 0)
		{
			var infoLog:CastGLcharStar = untyped __cpp__('new GLchar[1024]');

			GL.getProgramInfoLog(program, 1024, null, infoLog);

			final infoLogStr:String = new String(untyped infoLog);

			untyped __cpp__('delete[] {0}', infoLog);

			return infoLogStr;
		}

		return null;
	}

	static function createALSource():ALuint
	{
		var source:ALuint = 0;
		AL.genSources(1, Pointer.addressOf(source).raw);
		return source;
	}

	static function createALBuffer():ALuint
	{
		var buffer:ALuint = 0;
		AL.genBuffers(1, Pointer.addressOf(buffer).raw);
		return buffer;
	}

	static function getCurrentSeconds(source:ALuint):Float
	{
		var secOffset:ALfloat = 0;

		AL.getSourcef(source, AL.SEC_OFFSET, Pointer.addressOf(secOffset).raw);

		return secOffset;
	}

	static function getTotalSeconds(buffer:ALuint):Float
	{
		var frequency:ALint = 0;
		var size:ALint = 0;
		var channels:ALint = 0;
		var bits:ALint = 0;

		AL.getBufferi(buffer, AL.FREQUENCY, Pointer.addressOf(frequency).raw);
		AL.getBufferi(buffer, AL.SIZE, Pointer.addressOf(size).raw);
		AL.getBufferi(buffer, AL.CHANNELS, Pointer.addressOf(channels).raw);
		AL.getBufferi(buffer, AL.BITS, Pointer.addressOf(bits).raw);

		return ((size / ((bits / 8.0) * channels)) / frequency);
	}

	static function getBytesFromIO(path:String):Bytes
	{
		final data_size:SizeT = 0;

		final data:RawPointer<UInt8> = cast SDL.LoadFile_IO(SDL.IOFromFile(path, 'rb'), Pointer.addressOf(data_size).raw, true);

		final bytes:BytesData = Pointer.fromRaw(data).toUnmanagedArray(data_size);

		SDL.free(untyped data);

		return Bytes.ofData(bytes);
	}

	public static function main():Void
	{
		// Request a high-resolution timer (1 ms) for more precise delta times
		// This improves the accuracy of SDL_GetTicks() and FPS measurements,
		// especially on Windows. Higher resolution may slightly increase CPU usage.
		SDL.SetHint(SDL.HINT_TIMER_RESOLUTION, "1");

		// Disable alt-tabbing while the window is grabbed (focused/input captured)
		// Prevents the window from losing input focus when the user presses Alt+Tab,
		// useful for fullscreen or input-intensive apps like games.
		SDL.SetHint(SDL.HINT_ALLOW_ALT_TAB_WHILE_GRABBED, "0");

		if (!SDL.Init(SDL.INIT_VIDEO | SDL.INIT_GAMEPAD | SDL.INIT_HAPTIC))
		{
			Sys.println('SDL initialization failed: ${cast (SDL.GetError(), String)}');
			return;
		}

		#if macos
		SDL.GL_SetAttribute(SD_GL_CONTEXT_FLAGS, SDL.GL_CONTEXT_FORWARD_COMPATIBLE_FLAG);
		#end

		#if (android || rpi || iphone)
		SDL.GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL.GL_CONTEXT_PROFILE_ES);
		SDL.GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 3);
		SDL.GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 0);
		#else
		SDL.GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL.GL_CONTEXT_PROFILE_CORE);
		SDL.GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 3);
		SDL.GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 3);
		#end

		SDL.GL_SetAttribute(SDL_GL_SHARE_WITH_CURRENT_CONTEXT, 1);

		var flags:SDL_WindowFlags = untyped SDL.WINDOW_OPENGL | untyped SDL.WINDOW_RESIZABLE;

		#if android
		flags = untyped flags | SDL.WINDOW_FULLSCREEN;
		#end

		window = SDL.CreateWindow('Rogue', WINDOW_WIDTH, WINDOW_HEIGHT, flags);

		if (window == null)
		{
			Sys.println('Window creation failed: ${cast (SDL.GetError(), String)}');
			SDL.Quit();
			return;
		}

		glContext = SDL.GL_CreateContext(window);

		if (glContext == null)
		{
			Sys.println('OpenGL context creation failed: ${cast (SDL.GetError(), String)}');
			SDL.DestroyWindow(window);
			SDL.Quit();
			return;
		}

		#if (android || rpi || iphone)
		final version:Int = Glad.loadGLES2(cast SDL.GL_GetProcAddress);
		#else
		final version:Int = Glad.loadGL(cast SDL.GL_GetProcAddress);
		#end

		if (version == 0)
		{
			Sys.println('Failed to initialize GLAD2');

			SDL.GL_DestroyContext(glContext);
			SDL.DestroyWindow(window);
			SDL.Quit();

			return;
		}

		var w:Int = 0;
		var h:Int = 0;

		if (!SDL.GetWindowSizeInPixels(window, Pointer.addressOf(w).raw, Pointer.addressOf(h).raw))
		{
			w = WINDOW_WIDTH;
			h = WINDOW_HEIGHT;
		}

		GL.viewport(0, 0, w, h);

		#if (android || rpi || iphone)
		final vertexShaderSource:String = Resource.getString('assets/gl300es/default.vert');
		final fragmentShaderSource:String = Resource.getString('assets/gl300es/default.frag');
		#else
		final vertexShaderSource:String = Resource.getString('assets/gl330core/default.vert');
		final fragmentShaderSource:String = Resource.getString('assets/gl330core/default.frag');
		#end

		final vertexShader:GLuint = createGLShader(GL.VERTEX_SHADER, vertexShaderSource);
		final fragmentShader:GLuint = createGLShader(GL.FRAGMENT_SHADER, fragmentShaderSource);

		shaderProgram = createGLProgram(vertexShader, fragmentShader);
		vertexArray = createGLVertexArray();
		vertexBufferObject = createGLBuffer();

		GL.bindVertexArray(vertexArray);

		{
			GL.bindBuffer(GL.ARRAY_BUFFER, vertexBufferObject);

			{
				final verticles:Array<GLfloat> = [
					 0.0,  0.5, 0.0, 1.0, 0.0, 0.0,
					-0.5, -0.5, 0.0, 0.0, 1.0, 0.0,
					 0.5, -0.5, 0.0, 0.0, 0.0, 1.0
				];

				GL.bufferData(GL.ARRAY_BUFFER, verticles.length * GLfloat.size(), cast Pointer.arrayElem(verticles, 0).raw, GL.STATIC_DRAW);

				GL.vertexAttribPointer(0, 3, GL.FLOAT, GL.FALSE, 6 * GLfloat.size(), cast 0);
				GL.enableVertexAttribArray(0);

				GL.vertexAttribPointer(1, 3, GL.FLOAT, GL.FALSE, 6 * GLfloat.size(), cast 3 * GLfloat.size());
				GL.enableVertexAttribArray(1);
			}

			GL.bindBuffer(GL.ARRAY_BUFFER, 0);
		}

		GL.bindVertexArray(0);

		AudioManager.init();

		alBuffers = new StdVector<ALuint>();
		alSources = new StdVector<ALuint>();

		final paths:Array<String> = [
			'assets/Inst-erect.ogg',
			'assets/Voices-darnell-erect.ogg',
			'assets/Voices-pico-erect.ogg'
		];

		for (path in paths)
		{
			final source:ALuint = createALSource();

			{
				final buffer:AudioBuffer = new AudioBuffer();

				if (buffer.decode(path, OGG))
				{
					@:privateAccess
					final alBuffer:ALuint = buffer.createALBuffer();

					AL.sourcei(source, AL.BUFFER, alBuffer);

					alBuffers.push_back(alBuffer);
				}

				buffer.dispose();
			}

			AL.sourcei(source, AL.LOOPING, AL.TRUE);

			alSources.push_back(source);
		}

		AL.sourcePlayv(alSources.size(), alSources.data());

		{
			MainLoop.setTargetFPS(60);

			while (running)
			{
				run();
			}
		}

		GL.deleteVertexArrays(1, Pointer.addressOf(vertexArray).raw);
		GL.deleteBuffers(1, Pointer.addressOf(vertexBufferObject).raw);
		GL.deleteProgram(shaderProgram);

		AL.sourceStopv(alSources.size(), alSources.data());
		AL.deleteSources(alSources.size(), alSources.data());
		AL.deleteBuffers(alBuffers.size(), alBuffers.data());

		AudioManager.shutdown();

		SDL.GL_DestroyContext(glContext);
		SDL.DestroyWindow(window);
		SDL.Quit();
	}

	static function run():Void
	{
		MainLoop.frameStart();

		{
			// Events Fetching

			final event:SDL_Event = new SDL_Event();

			while (SDL.PollEvent(RawPointer.addressOf(event)))
			{
				if (event.type == SDL_EVENT_QUIT)
				{
					running = false;
				}
				else if (event.type == SDL_EVENT_KEY_DOWN)
				{
					if (event.key.key == SDL.K_P)
					{
						AL.sourcePausev(alSources.size(), alSources.data());
					}
					else if (event.key.key == SDL.K_S)
					{
						AL.sourcePlayv(alSources.size(), alSources.data());
					}
					else if (event.key.key == SDL.K_R)
					{
						AL.sourceRewindv(alSources.size(), alSources.data());
					}

					if (event.key.key == SDL.K_KP_0)
					{
						AL.sourcef(alSources[0], AL.GAIN, 0.0);
					}
					else if (event.key.key == SDL.K_KP_1)
					{
						AL.sourcef(alSources[0], AL.GAIN, 1);
					}
					else if (event.key.key == SDL.K_KP_2)
					{
						AL.sourcef(alSources[1], AL.GAIN, 0.0);
					}
					else if (event.key.key == SDL.K_KP_3)
					{
						AL.sourcef(alSources[1], AL.GAIN, 1);
					}
					else if (event.key.key == SDL.K_KP_4)
					{
						AL.sourcef(alSources[2], AL.GAIN, 0.0);
					}
					else if (event.key.key == SDL.K_KP_5)
					{
						AL.sourcef(alSources[2], AL.GAIN, 1);
					}
				}
				else if (event.type == SDL_EVENT_WINDOW_RESIZED)
				{
					GL.viewport(0, 0, event.window.data1, event.window.data2);
				}
			}
		}

		{
			// Update

			// Sys.println('FPS: ${Math.fround(1000.0 / MainLoop.deltaTime)} - Frame: ${MainLoop.deltaTime}ms');

			// final paths:Array<String> = [
			// 	'assets/Inst-erect.ogg',
			// 	'assets/Voices-darnell-erect.ogg',
			// 	'assets/Voices-pico-erect.ogg'
			// ];

			// Sys.println('');

			// for (i in 0...paths.length)
			// {
			// 	Sys.println('Path: ${paths[i]}, Current: ${getCurrentSeconds(alSources[i])} seconds / Total: ${getTotalSeconds(alBuffers[i])} seconds');
			// }

			// Sys.println('');
		}

		{
			// Render

			GL.clearColor(0.1, 0.1, 0.1, 1.0);
			GL.clear(GL.COLOR_BUFFER_BIT);

			GL.bindVertexArray(vertexArray);
			GL.drawArrays(GL.TRIANGLES, 0, 3);
			GL.bindVertexArray(0);

			SDL.GL_SwapWindow(window);
		}

		MainLoop.frameEnd();
	}
}
