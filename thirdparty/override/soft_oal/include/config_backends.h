#if defined(_WIN32) || defined(_WIN64) || defined(__CYGWIN__)
    #include "platforms/windows/config_backends.h"
#elif defined(__APPLE__) || defined(__MACH__)
    #include "platforms/apple/config_backends.h"
#elif defined(__ANDROID__)
    #include "platforms/android/config_backends.h"
#elif defined(__EMSCRIPTEN__)
    #include "platforms/emscripten/config_backends.h"
#endif
