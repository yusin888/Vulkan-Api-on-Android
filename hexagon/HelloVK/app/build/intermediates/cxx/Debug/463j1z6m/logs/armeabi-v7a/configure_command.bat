@echo off
"C:\\Users\\hp\\AppData\\Local\\Android\\Sdk\\cmake\\3.22.1\\bin\\cmake.exe" ^
  "-HE:\\Jkuat units\\units 3.2\\Computer Graphics\\cat1\\hexagon\\HelloVK\\app\\src\\main\\cpp" ^
  "-DCMAKE_SYSTEM_NAME=Android" ^
  "-DCMAKE_EXPORT_COMPILE_COMMANDS=ON" ^
  "-DCMAKE_SYSTEM_VERSION=30" ^
  "-DANDROID_PLATFORM=android-30" ^
  "-DANDROID_ABI=armeabi-v7a" ^
  "-DCMAKE_ANDROID_ARCH_ABI=armeabi-v7a" ^
  "-DANDROID_NDK=C:\\Users\\hp\\AppData\\Local\\Android\\Sdk\\ndk\\25.2.9519653" ^
  "-DCMAKE_ANDROID_NDK=C:\\Users\\hp\\AppData\\Local\\Android\\Sdk\\ndk\\25.2.9519653" ^
  "-DCMAKE_TOOLCHAIN_FILE=C:\\Users\\hp\\AppData\\Local\\Android\\Sdk\\ndk\\25.2.9519653\\build\\cmake\\android.toolchain.cmake" ^
  "-DCMAKE_MAKE_PROGRAM=C:\\Users\\hp\\AppData\\Local\\Android\\Sdk\\cmake\\3.22.1\\bin\\ninja.exe" ^
  "-DCMAKE_LIBRARY_OUTPUT_DIRECTORY=E:\\Jkuat units\\units 3.2\\Computer Graphics\\cat1\\hexagon\\HelloVK\\app\\build\\intermediates\\cxx\\Debug\\463j1z6m\\obj\\armeabi-v7a" ^
  "-DCMAKE_RUNTIME_OUTPUT_DIRECTORY=E:\\Jkuat units\\units 3.2\\Computer Graphics\\cat1\\hexagon\\HelloVK\\app\\build\\intermediates\\cxx\\Debug\\463j1z6m\\obj\\armeabi-v7a" ^
  "-DCMAKE_BUILD_TYPE=Debug" ^
  "-DCMAKE_FIND_ROOT_PATH=E:\\Jkuat units\\units 3.2\\Computer Graphics\\cat1\\hexagon\\HelloVK\\app\\.cxx\\Debug\\463j1z6m\\prefab\\armeabi-v7a\\prefab" ^
  "-BE:\\Jkuat units\\units 3.2\\Computer Graphics\\cat1\\hexagon\\HelloVK\\app\\.cxx\\Debug\\463j1z6m\\armeabi-v7a" ^
  -GNinja ^
  "-DANDROID_STL=c++_shared"
