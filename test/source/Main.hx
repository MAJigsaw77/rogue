package;

import cpp.ConstCharStar;
import cpp.RawPointer;

import haxe.Resource;

import rogue.internal.externs.sdl.SDL;

@:buildXml("<include name=\"${haxelib:rogue}/project/IncludeLibrary.xml\" />")
@:headerInclude('glad/gl.h')
class Main
{
	static final WINDOW_WIDTH:Int = 1280;
	static final WINDOW_HEIGHT:Int = 720;

	public static function main():Void
	{
		if (!SDL.Init(SDL.INIT_VIDEO))
		{
			Sys.println('SDL initialization failed: ${cast (SDL.GetError(), String)}');
		}

		#if macos
		SDL_GL_SetAttribute(SDL_GL_CONTEXT_FLAGS, SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG);
		#end

		SDL.GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL.GL_CONTEXT_PROFILE_CORE);
		SDL.GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 3);
		SDL.GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 3);

		SDL.GL_SetAttribute(SDL_GL_DOUBLEBUFFER, 1);

		final window:RawPointer<SDL_Window> = SDL.CreateWindow('Rogue', 1280, 720, untyped SDL.WINDOW_OPENGL | untyped SDL.WINDOW_RESIZABLE);

		if (window == null)
		{
			Sys.println('Window creation failed: ${cast (SDL.GetError(), String)}');

			SDL.Quit();
		}

		final glContext:SDL_GLContext = SDL.GL_CreateContext(window);

		if (glContext == null)
		{
			Sys.println('OpenGL context creation failed: ${cast (SDL.GetError(), String)}');

			SDL.DestroyWindow(window);
			SDL.Quit();
		}

		final version:Int = untyped __cpp__('gladLoadGL((GLADloadfunc){0})', SDL.GL_GetProcAddress);

		if (version == 0)
		{
			Sys.println('Failed to initialize GLAD2');

			SDL.GL_DestroyContext(glContext);
			SDL.DestroyWindow(window);
			SDL.Quit();
		}

		SDL.GL_SetSwapInterval(1);

		final vertexShaderSource:ConstCharStar = Resource.getString('assets/default.vert');

		final vertexShader:Int = untyped glCreateShader(untyped GL_VERTEX_SHADER);
		untyped glShaderSource(vertexShader, 1, cpp.RawPointer.addressOf(vertexShaderSource), null);
		untyped glCompileShader(vertexShader);

		final fragmentShaderSource:ConstCharStar = Resource.getString('assets/default.frag');

		final fragmentShader:Int = untyped glCreateShader(untyped GL_FRAGMENT_SHADER);
		untyped glShaderSource(fragmentShader, 1, cpp.RawPointer.addressOf(fragmentShaderSource), null);
		untyped glCompileShader(fragmentShader);

		untyped __cpp__('
    
    GLint success;
    char infoLog[512];
    glGetShaderiv(vertexShader, GL_COMPILE_STATUS, &success);
    if (!success) {
        glGetShaderInfoLog(vertexShader, 512, NULL, infoLog);
        printf("Vertex shader compilation failed: %s\\n", infoLog);
    }
    
    glGetShaderiv(fragmentShader, GL_COMPILE_STATUS, &success);
    if (!success) {
        glGetShaderInfoLog(fragmentShader, 512, NULL, infoLog);
        printf("Fragment shader compilation failed: %s\\n", infoLog);
    }
    
    // Create shader program
    GLuint shaderProgram = glCreateProgram();
    glAttachShader(shaderProgram, vertexShader);
    glAttachShader(shaderProgram, fragmentShader);
    glLinkProgram(shaderProgram);
    
    glGetProgramiv(shaderProgram, GL_LINK_STATUS, &success);
    if (!success) {
        glGetProgramInfoLog(shaderProgram, 512, NULL, infoLog);
        printf("Shader program linking failed: %s\\n", infoLog);
    }
    
    glDeleteShader(vertexShader);
    glDeleteShader(fragmentShader);
    
    // Triangle vertices with colors (x, y, z, r, g, b)
    float vertices[] = {
        // positions        // colors
         0.0f,  0.5f, 0.0f,  1.0f, 0.0f, 0.0f,  // top - red
        -0.5f, -0.5f, 0.0f,  0.0f, 1.0f, 0.0f,  // bottom left - green
         0.5f, -0.5f, 0.0f,  0.0f, 0.0f, 1.0f   // bottom right - blue
    };
    
    // Create VAO, VBO
    GLuint VAO, VBO;
    glGenVertexArrays(1, &VAO);
    glGenBuffers(1, &VBO);
    
    glBindVertexArray(VAO);
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);
    
    // Position attribute
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void*)0);
    glEnableVertexAttribArray(0);
    
    // Color attribute
    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void*)(3 * sizeof(float)));
    glEnableVertexAttribArray(1);
    
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindVertexArray(0);
    
    // Main loop
    bool running = true;
    SDL_Event event;
    Uint64 startTime = SDL_GetTicks();
    
    while (running) {
        // Handle events
        while (SDL_PollEvent(&event)) {
            if (event.type == SDL_EVENT_QUIT) {
                running = false;
            }
            else if (event.type == SDL_EVENT_KEY_DOWN) {
                if (event.key.key == SDLK_ESCAPE) {
                    running = false;
                }
            }
        }
        
        // Calculate rotation
        float time = (SDL_GetTicks() - startTime) / 1000.0f;
        float angle = time * 1.0f; // Rotate 1 radian per second
        
        // Create transformation matrix (simple 2D rotation)
        float transform[16] = {
            cosf(angle), -sinf(angle), 0.0f, 0.0f,
            sinf(angle),  cosf(angle), 0.0f, 0.0f,
            0.0f,         0.0f,        1.0f, 0.0f,
            0.0f,         0.0f,        0.0f, 1.0f
        };
        
        // Clear screen
        glClearColor(0.1f, 0.1f, 0.1f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);
        
        // Draw triangle
        glUseProgram(shaderProgram);
        GLint transformLoc = glGetUniformLocation(shaderProgram, "transform");
        glUniformMatrix4fv(transformLoc, 1, GL_FALSE, transform);
        
        glBindVertexArray(VAO);
        glDrawArrays(GL_TRIANGLES, 0, 3);
        
        // Swap buffers
        SDL_GL_SwapWindow(window);
    }
    
    // Cleanup
    glDeleteVertexArrays(1, &VAO);
    glDeleteBuffers(1, &VBO);
    glDeleteProgram(shaderProgram);
	', vertexShaderSource, fragmentShaderSource);

		SDL.GL_DestroyContext(glContext);
		SDL.DestroyWindow(window);
		SDL.Quit();
	}
}
