#include <SDL3/SDL_platform_defines.h>

#if defined(SDL_PLATFORM_WIN32)
	#include "platforms/windows/config.h"
#elif defined(SDL_PLATFORM_APPLE)
	#include "platforms/apple/config.h"
#elif defined(SDL_PLATFORM_ANDROID)
	#include "platforms/android/config.h"
#elif defined(SDL_PLATFORM_EMSCRIPTEN)
	#include "platforms/emscripten/config.h"
#endif
