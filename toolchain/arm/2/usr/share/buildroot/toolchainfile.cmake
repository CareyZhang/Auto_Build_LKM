set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_C_COMPILER /home/ubuntu/buildroot/output/host/usr/bin/arm-buildroot-linux-uclibcgnueabi-gcc)
set(CMAKE_CXX_COMPILER /home/ubuntu/buildroot/output/host/usr/bin/arm-buildroot-linux-uclibcgnueabi-g++)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}   -pipe -Os " CACHE STRING "Buildroot CFLAGS" FORCE)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}   -pipe -Os " CACHE STRING "Buildroot CXXFLAGS" FORCE)
set(CMAKE_INSTALL_SO_NO_EXE 0)
set(CMAKE_PROGRAM_PATH "/home/ubuntu/buildroot/output/host/usr/bin")
set(CMAKE_FIND_ROOT_PATH "/home/ubuntu/buildroot/output/host/usr/arm-buildroot-linux-uclibcgnueabi/sysroot")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(ENV{PKG_CONFIG_SYSROOT_DIR} "/home/ubuntu/buildroot/output/host/usr/arm-buildroot-linux-uclibcgnueabi/sysroot")
