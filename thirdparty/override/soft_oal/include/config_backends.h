#include <SDL3/SDL_platform_defines.h>

#if defined(SDL_PLATFORM_WIN32)
	#include "platforms/windows/config_backends.h"
#elif defined(SDL_PLATFORM_APPLE)
	#include "platforms/apple/config_backends.h"
#elif defined(SDL_PLATFORM_ANDROID)
	#include "platforms/android/config_backends.h"
#elif defined(SDL_PLATFORM_EMSCRIPTEN)
	#include "platforms/emscripten/config_backends.h"
#endif
