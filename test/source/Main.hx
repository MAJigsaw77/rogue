package;

import cpp.ConstCharStar;
import cpp.RawPointer;

import haxe.Resource;

import rogue.internal.externs.glad.opengl.GL;
import rogue.internal.externs.glad.opengl.Glad;
import rogue.internal.externs.sdl.SDL;
import rogue.internal.externs.utils.VoidPointer;

@:buildXml("<include name=\"${haxelib:rogue}/project/IncludeLibrary.xml\" />")
@:headerInclude('glad/gl.h')
class Main
{
	static final WINDOW_WIDTH:Int = 1280;
	static final WINDOW_HEIGHT:Int = 720;

	static function createVertexArray():GLuint
	{
		var vertexArray:GLuint = 0;
		GL.genVertexArrays(1, RawPointer.addressOf(vertexArray));
		return vertexArray;
	}

	static function createBuffer():GLuint
	{
		var vertexBufferObject:GLuint = 0;
		GL.genBuffers(1, RawPointer.addressOf(vertexBufferObject));
		return vertexBufferObject;
	}

	static function createProgram(vertexShader:GLuint, fragmentShader:GLuint, window:RawPointer<SDL_Window>):GLuint
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

	static function createShader(type:GLenum, window:RawPointer<SDL_Window>, source:ConstGLcharStar):GLuint
	{
		var shader:GLuint = GL.createShader(type);

		GL.shaderSource(shader, 1, RawPointer.addressOf(source), null);
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

		GL.getShaderiv(shader, GL.COMPILE_STATUS, RawPointer.addressOf(success));

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

		GL.getProgramiv(program, GL.LINK_STATUS, RawPointer.addressOf(success));

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

	public static function main():Void
	{
		if (!SDL.Init(SDL.INIT_VIDEO))
		{
			Sys.println('SDL initialization failed: ${cast (SDL.GetError(), String)}');
			return;
		}

		#if macos
		SDL.GL_SetAttribute(SD_GL_CONTEXT_FLAGS, SDL.GL_CONTEXT_FORWARD_COMPATIBLE_FLAG);
		#end

		SDL.GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL.GL_CONTEXT_PROFILE_CORE);
		SDL.GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 3);
		SDL.GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 3);

		SDL.GL_SetAttribute(SDL_GL_DOUBLEBUFFER, 1);

		SDL.GL_SetAttribute(SDL_GL_MULTISAMPLEBUFFERS, 1);
		SDL.GL_SetAttribute(SDL_GL_MULTISAMPLESAMPLES, 4);

		final window:RawPointer<SDL_Window> = SDL.CreateWindow('Rogue', WINDOW_WIDTH, WINDOW_HEIGHT, untyped SDL.WINDOW_OPENGL | SDL.WINDOW_RESIZABLE);

		if (window == null)
		{
			Sys.println('Window creation failed: ${cast (SDL.GetError(), String)}');
			SDL.Quit();
			return;
		}

		final glContext:SDL_GLContext = SDL.GL_CreateContext(window);

		if (glContext == null)
		{
			Sys.println('OpenGL context creation failed: ${cast (SDL.GetError(), String)}');
			SDL.DestroyWindow(window);
			SDL.Quit();
			return;
		}

		final version:Int = Glad.loadGL(cast SDL.GL_GetProcAddress);

		if (version == 0)
		{
			Sys.println('Failed to initialize GLAD2');
			SDL.GL_DestroyContext(glContext);
			SDL.DestroyWindow(window);
			SDL.Quit();
			return;
		}

		GL.enable(GL.MULTISAMPLE);

		GL.viewport(0, 0, WINDOW_WIDTH, WINDOW_HEIGHT);

		SDL.GL_SetSwapInterval(0);

		final windowTitle:ConstCharStar = SDL.GetWindowTitle(window);
		final version:ConstGLcharStar = cast GL.getString(GL.VERSION);

		SDL.SetWindowTitle(window, '${windowTitle.toString()} - ${version.toString()}');

		final vertexShader:GLuint = createShader(GL.VERTEX_SHADER, window, Resource.getString('assets/default.vert'));
		final fragmentShader:GLuint = createShader(GL.FRAGMENT_SHADER, window, Resource.getString('assets/default.frag'));
		final shaderProgram:GLuint = createProgram(vertexShader, fragmentShader, window);
		final vertexArray:GLuint = createVertexArray();
		final vertexBufferObject:GLuint = createBuffer();

		GL.bindVertexArray(vertexArray);

		{
			GL.bindBuffer(GL.ARRAY_BUFFER, vertexBufferObject);

			{
				final verticles:Array<GLfloat> = [
					0.0,  0.5, 0.0, 1.0, 0.0, 0.0,
					-0.5, -0.5, 0.0, 0.0, 1.0, 0.0,
					0.5, -0.5, 0.0, 0.0, 0.0, 1.0
				];

				GL.bufferData(GL.ARRAY_BUFFER, verticles.length * GLfloat.size(), verticles, GL.STATIC_DRAW);

				GL.vertexAttribPointer(0, 3, GL.FLOAT, GL.FALSE, 6 * GLfloat.size(), 0);
				GL.enableVertexAttribArray(0);

				GL.vertexAttribPointer(1, 3, GL.FLOAT, GL.FALSE, 6 * GLfloat.size(), 3 * GLfloat.size());
				GL.enableVertexAttribArray(1);
			}

			GL.bindBuffer(GL.ARRAY_BUFFER, 0);
		}

		GL.bindVertexArray(0);

		var running:Bool = true;

		final event:SDL_Event = new SDL_Event();

		while (running)
		{
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
				else if (event.type == SDL_EVENT_WINDOW_RESIZED)
				{
					GL.viewport(0, 0, event.window.data1, event.window.data2);
				}
			}

			GL.clearColor(0.1, 0.1, 0.1, 1.0);
			GL.clear(GL.COLOR_BUFFER_BIT);

			GL.bindVertexArray(vertexArray);
			GL.drawArrays(GL.TRIANGLES, 0, 3);
			GL.bindVertexArray(0);

			SDL.GL_SwapWindow(window);
		}

		GL.deleteVertexArrays(1, RawPointer.addressOf(vertexArray));
		GL.deleteBuffers(1, RawPointer.addressOf(vertexBufferObject));
		GL.deleteProgram(shaderProgram);

		SDL.GL_DestroyContext(glContext);
		SDL.DestroyWindow(window);
		SDL.Quit();
	}
}
