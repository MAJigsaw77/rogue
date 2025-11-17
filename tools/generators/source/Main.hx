package;

import openal.Main as OpenALMain;
import opengl.Main as OpenGLMain;

class Main
{
	public static function main():Void
	{
		// Run OpenAL Generator Main.hx
		OpenALMain.run();

		// Empty line
		Sys.println('');

		// Run OpenGL Generator Main.hx
		OpenGLMain.run();
	}
}
