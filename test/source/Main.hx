package;

import cpp.Callable;
import cpp.SizeT;
import cpp.UInt32;
import cpp.Pointer;
import cpp.RawPointer;

import haxe.Resource;

import rogue.internal.externs.SDL;
import rogue.internal.externs.dr_libs.DrFLAC;
import rogue.internal.externs.dr_libs.DrMP3;
import rogue.internal.externs.dr_libs.DrWAV;
#if emscripten
import rogue.internal.externs.openal.emscripten.AL;
import rogue.internal.externs.openal.emscripten.ALC;
#else
import rogue.internal.externs.openal.soft_oal.AL;
import rogue.internal.externs.openal.soft_oal.ALC;
#end
#if (android || rpi || emscripten || iphone)
import rogue.internal.externs.opengl.gles2.GL;
import rogue.internal.externs.opengl.gles2.Glad;
#else
import rogue.internal.externs.opengl.gl.GL;
import rogue.internal.externs.opengl.gl.Glad;
#end

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

	static var alBuffer:ALuint = 0;
	static var alSource:ALuint = 0;

	static var gamepad:RawPointer<SDL_Gamepad> = null;

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

	static function createGLProgram(vertexShader:GLuint, fragmentShader:GLuint, window:RawPointer<SDL_Window>):GLuint
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

	static function createGLShader(type:GLenum, window:RawPointer<SDL_Window>, source:ConstGLcharStar):GLuint
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

		#if (android || rpi || emscripten || iphone)
		SDL.GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL.GL_CONTEXT_PROFILE_ES);
		SDL.GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 3);
		SDL.GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 0);
		#else
		SDL.GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL.GL_CONTEXT_PROFILE_CORE);
		SDL.GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 3);
		SDL.GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 3);
		#end

		SDL.GL_SetAttribute(SDL_GL_MULTISAMPLEBUFFERS, 1);
		SDL.GL_SetAttribute(SDL_GL_MULTISAMPLESAMPLES, 4);

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

		SDL.GL_SetSwapInterval(1);

		#if (android || rpi || emscripten || iphone)
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

		if (isExtensionSupported('GL_EXT_multisample'))
		{
			GL.enable(GL.MULTISAMPLE_EXT);
		}

		var w:Int = 0;
		var h:Int = 0;

		if (!SDL.GetWindowSizeInPixels(window, Pointer.addressOf(w).raw, Pointer.addressOf(h).raw))
		{
			w = WINDOW_WIDTH;
			h = WINDOW_HEIGHT;
		}

		GL.viewport(0, 0, w, h);

		#if (android || rpi || emscripten || iphone)
		final vertexShaderSource:String = Resource.getString('assets/gl300es/default.vert');
		final fragmentShaderSource:String = Resource.getString('assets/gl300es/default.frag');
		#else
		final vertexShaderSource:String = Resource.getString('assets/gl330core/default.vert');
		final fragmentShaderSource:String = Resource.getString('assets/gl330core/default.frag');
		#end

		shaderProgram = createGLProgram(createGLShader(GL.VERTEX_SHADER, window, vertexShaderSource),
			createGLShader(GL.FRAGMENT_SHADER, window, fragmentShaderSource), window);
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

		final device:RawPointer<ALCdevice> = ALC.openDevice(null);

		if (device == null)
		{
			Sys.println('Failed to open OpenAL device.');
			return;
		}

		final context:RawPointer<ALCcontext> = ALC.createContext(device, null);

		if (context == null)
		{
			Sys.println('Failed to create OpenAL context.');
			ALC.closeDevice(device);
			return;
		}

		ALC.makeContextCurrent(context);

		alBuffer = createALBuffer();

		{
			var channels:UInt32 = 0;
			var sampleRate:UInt32 = 0;
			var totalFrames:DrWAV_UInt64 = 0;

			// final io:RawPointer<SDL_IOStream> = SDL.IOFromFile('assets/Through The Fire And Flames.wav', 'rb');
			final io:RawPointer<SDL_IOStream> = SDL.IOFromFile('assets/Chxxai.wav', 'rb');
			// final io:RawPointer<SDL_IOStream> = SDL.IOFromFile('assets/IRIS OUT.wav', 'rb');

			final data:RawPointer<Single> = DrWAV.open_and_read_pcm_frames_f32(Callable.fromStaticFunction(drwav_read),
				Callable.fromStaticFunction(drwav_seek), Callable.fromStaticFunction(drwav_tell), untyped io, Pointer.addressOf(channels).raw,
				Pointer.addressOf(sampleRate).raw, Pointer.addressOf(totalFrames).raw, null);

			SDL.CloseIO(io);

			if (data == null)
				Sys.println('Failed to read WAV data.');
			else
			{
				AL.bufferData(alBuffer, (channels == 1) ? AL.FORMAT_MONO_FLOAT32 : AL.FORMAT_STEREO_FLOAT32, untyped data,
					untyped totalFrames * channels * ALfloat.size(), sampleRate);

				DrWAV.free(untyped data, null);
			}
		}

		alSource = createALSource();

		AL.sourcei(alSource, AL.BUFFER, alBuffer);
		AL.sourcei(alSource, AL.LOOPING, AL.TRUE);

		AL.sourcePlay(alSource);

		{
			#if emscripten
			emscripten.Emscripten.set_main_loop(cpp.Callable.fromStaticFunction(run), 0, true);
			#else
			while (running)
			{
				run();
			}
			#end
		}

		GL.deleteVertexArrays(1, Pointer.addressOf(vertexArray).raw);
		GL.deleteBuffers(1, Pointer.addressOf(vertexBufferObject).raw);
		GL.deleteProgram(shaderProgram);

		AL.sourceStop(alSource);
		AL.deleteSources(1, Pointer.addressOf(alSource).raw);
		AL.deleteBuffers(1, Pointer.addressOf(alBuffer).raw);

		ALC.makeContextCurrent(null);
		ALC.destroyContext(context);
		ALC.closeDevice(device);

		SDL.GL_DestroyContext(glContext);
		SDL.DestroyWindow(window);
		SDL.Quit();
	}

	static function run():Void
	{
		final event:SDL_Event = new SDL_Event();

		while (SDL.PollEvent(RawPointer.addressOf(event)))
		{
			if (event.type == SDL_EVENT_QUIT)
			{
				running = false;
			}
			else if (event.type == SDL_EVENT_KEY_DOWN)
			{
				if (event.key.key == SDL.K_ESCAPE)
				{
					running = false;
				}
			}
			else if (event.type == SDL_EVENT_GAMEPAD_ADDED)
			{
				if (gamepad == null)
					gamepad = SDL.OpenGamepad(event.gdevice.which);
			}
			else if (event.type == SDL_EVENT_GAMEPAD_REMOVED)
			{
				if (gamepad != null)
				{
					SDL.CloseGamepad(gamepad);

					gamepad = null;
				}
			}
			else if (event.type == SDL_EVENT_WINDOW_RESIZED)
			{
				GL.viewport(0, 0, event.window.data1, event.window.data2);
			}
		}

		Sys.println('Current: ${getCurrentSeconds(alSource)} seconds / Total: ${getTotalSeconds(alBuffer)} seconds');

		if (gamepad != null && SDL.GamepadConnected(gamepad))
		{
			SDL.RumbleGamepad(gamepad, Math.floor(65535 * 0.5), Math.floor(65535 * 0.5), 500);

			SDL.SetGamepadLED(gamepad, 255, 0, 0);
		}

		GL.clearColor(0.1, 0.1, 0.1, 1.0);
		GL.clear(GL.COLOR_BUFFER_BIT);

		GL.bindVertexArray(vertexArray);
		GL.drawArrays(GL.TRIANGLES, 0, 3);
		GL.bindVertexArray(0);

		SDL.GL_SwapWindow(window);
	}

	static function drwav_read(pUserData:RawPointer<cpp.Void>, pBufferOut:RawPointer<cpp.Void>, bytesToRead:SizeT):SizeT
	{
		return SDL.ReadIO(cast pUserData, pBufferOut, bytesToRead);
	}

	static function drwav_seek(pUserData:RawPointer<cpp.Void>, offset:Int, origin:DrWAV_Seek_Origin):DrWAV_Bool32
	{
		var whence:SDL_IOWhence = 0;

		switch (origin)
		{
			case origin if (origin == DRWAV_SEEK_SET):
				whence = SDL_IO_SEEK_SET;
			case origin if (origin == DRWAV_SEEK_CUR):
				whence = SDL_IO_SEEK_CUR;
			case origin if (origin == DRWAV_SEEK_END):
				whence = SDL_IO_SEEK_END;
		}

		return untyped __cpp__('{0} >= {1}', SDL.SeekIO(cast pUserData, offset, whence), 0) ? DrWAV.TRUE : DrWAV.FALSE;
	}

	static function drwav_tell(pUserData:RawPointer<cpp.Void>, pCursor:RawPointer<DrWAV_Int64>):DrWAV_Bool32
	{
		final cursor:DrWAV_Int64 = SDL.TellIO(cast pUserData);

		pCursor[0] = cursor;

		return untyped __cpp__('{0} >= {1}', cursor, 0) ? DrWAV.TRUE : DrWAV.FALSE;
	}
}
