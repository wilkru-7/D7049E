# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.1\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\carol\Documents\D7049E

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\carol\Documents\D7049E\cmake-build-debug

# Include any dependencies generated for this target.
include bgfx.cmake\CMakeFiles\shaderc.dir\depend.make

# Include the progress variables for this target.
include bgfx.cmake\CMakeFiles\shaderc.dir\progress.make

# Include the compile flags for this target's objects.
include bgfx.cmake\CMakeFiles\shaderc.dir\flags.make

bgfx.cmake\CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc.cpp.obj: bgfx.cmake\CMakeFiles\shaderc.dir\flags.make
bgfx.cmake\CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc.cpp.obj: ..\bgfx.cmake\bgfx\tools\shaderc\shaderc.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object bgfx.cmake/CMakeFiles/shaderc.dir/bgfx/tools/shaderc/shaderc.cpp.obj"
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc.cpp.obj /FdCMakeFiles\shaderc.dir\ /FS -c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\tools\shaderc\shaderc.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shaderc.dir/bgfx/tools/shaderc/shaderc.cpp.i"
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\tools\shaderc\shaderc.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shaderc.dir/bgfx/tools/shaderc/shaderc.cpp.s"
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc.cpp.s /c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\tools\shaderc\shaderc.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_glsl.cpp.obj: bgfx.cmake\CMakeFiles\shaderc.dir\flags.make
bgfx.cmake\CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_glsl.cpp.obj: ..\bgfx.cmake\bgfx\tools\shaderc\shaderc_glsl.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object bgfx.cmake/CMakeFiles/shaderc.dir/bgfx/tools/shaderc/shaderc_glsl.cpp.obj"
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_glsl.cpp.obj /FdCMakeFiles\shaderc.dir\ /FS -c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\tools\shaderc\shaderc_glsl.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_glsl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shaderc.dir/bgfx/tools/shaderc/shaderc_glsl.cpp.i"
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_glsl.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\tools\shaderc\shaderc_glsl.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_glsl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shaderc.dir/bgfx/tools/shaderc/shaderc_glsl.cpp.s"
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_glsl.cpp.s /c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\tools\shaderc\shaderc_glsl.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_hlsl.cpp.obj: bgfx.cmake\CMakeFiles\shaderc.dir\flags.make
bgfx.cmake\CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_hlsl.cpp.obj: ..\bgfx.cmake\bgfx\tools\shaderc\shaderc_hlsl.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object bgfx.cmake/CMakeFiles/shaderc.dir/bgfx/tools/shaderc/shaderc_hlsl.cpp.obj"
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_hlsl.cpp.obj /FdCMakeFiles\shaderc.dir\ /FS -c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\tools\shaderc\shaderc_hlsl.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_hlsl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shaderc.dir/bgfx/tools/shaderc/shaderc_hlsl.cpp.i"
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_hlsl.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\tools\shaderc\shaderc_hlsl.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_hlsl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shaderc.dir/bgfx/tools/shaderc/shaderc_hlsl.cpp.s"
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_hlsl.cpp.s /c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\tools\shaderc\shaderc_hlsl.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_pssl.cpp.obj: bgfx.cmake\CMakeFiles\shaderc.dir\flags.make
bgfx.cmake\CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_pssl.cpp.obj: ..\bgfx.cmake\bgfx\tools\shaderc\shaderc_pssl.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object bgfx.cmake/CMakeFiles/shaderc.dir/bgfx/tools/shaderc/shaderc_pssl.cpp.obj"
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_pssl.cpp.obj /FdCMakeFiles\shaderc.dir\ /FS -c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\tools\shaderc\shaderc_pssl.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_pssl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shaderc.dir/bgfx/tools/shaderc/shaderc_pssl.cpp.i"
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_pssl.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\tools\shaderc\shaderc_pssl.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_pssl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shaderc.dir/bgfx/tools/shaderc/shaderc_pssl.cpp.s"
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_pssl.cpp.s /c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\tools\shaderc\shaderc_pssl.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_spirv.cpp.obj: bgfx.cmake\CMakeFiles\shaderc.dir\flags.make
bgfx.cmake\CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_spirv.cpp.obj: ..\bgfx.cmake\bgfx\tools\shaderc\shaderc_spirv.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object bgfx.cmake/CMakeFiles/shaderc.dir/bgfx/tools/shaderc/shaderc_spirv.cpp.obj"
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_spirv.cpp.obj /FdCMakeFiles\shaderc.dir\ /FS -c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\tools\shaderc\shaderc_spirv.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_spirv.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shaderc.dir/bgfx/tools/shaderc/shaderc_spirv.cpp.i"
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_spirv.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\tools\shaderc\shaderc_spirv.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_spirv.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shaderc.dir/bgfx/tools/shaderc/shaderc_spirv.cpp.s"
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_spirv.cpp.s /c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\tools\shaderc\shaderc_spirv.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_metal.cpp.obj: bgfx.cmake\CMakeFiles\shaderc.dir\flags.make
bgfx.cmake\CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_metal.cpp.obj: ..\bgfx.cmake\bgfx\tools\shaderc\shaderc_metal.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object bgfx.cmake/CMakeFiles/shaderc.dir/bgfx/tools/shaderc/shaderc_metal.cpp.obj"
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_metal.cpp.obj /FdCMakeFiles\shaderc.dir\ /FS -c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\tools\shaderc\shaderc_metal.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_metal.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shaderc.dir/bgfx/tools/shaderc/shaderc_metal.cpp.i"
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_metal.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\tools\shaderc\shaderc_metal.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_metal.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shaderc.dir/bgfx/tools/shaderc/shaderc_metal.cpp.s"
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_metal.cpp.s /c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\tools\shaderc\shaderc_metal.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\shaderc.dir\generated\vertexlayout.cpp.obj: bgfx.cmake\CMakeFiles\shaderc.dir\flags.make
bgfx.cmake\CMakeFiles\shaderc.dir\generated\vertexlayout.cpp.obj: bgfx.cmake\generated\vertexlayout.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object bgfx.cmake/CMakeFiles/shaderc.dir/generated/vertexlayout.cpp.obj"
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\shaderc.dir\generated\vertexlayout.cpp.obj /FdCMakeFiles\shaderc.dir\ /FS -c C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake\generated\vertexlayout.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\shaderc.dir\generated\vertexlayout.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shaderc.dir/generated/vertexlayout.cpp.i"
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\shaderc.dir\generated\vertexlayout.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake\generated\vertexlayout.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\shaderc.dir\generated\vertexlayout.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shaderc.dir/generated/vertexlayout.cpp.s"
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\shaderc.dir\generated\vertexlayout.cpp.s /c C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake\generated\vertexlayout.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\shaderc.dir\generated\shader_spirv.cpp.obj: bgfx.cmake\CMakeFiles\shaderc.dir\flags.make
bgfx.cmake\CMakeFiles\shaderc.dir\generated\shader_spirv.cpp.obj: bgfx.cmake\generated\shader_spirv.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object bgfx.cmake/CMakeFiles/shaderc.dir/generated/shader_spirv.cpp.obj"
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\shaderc.dir\generated\shader_spirv.cpp.obj /FdCMakeFiles\shaderc.dir\ /FS -c C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake\generated\shader_spirv.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\shaderc.dir\generated\shader_spirv.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shaderc.dir/generated/shader_spirv.cpp.i"
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\shaderc.dir\generated\shader_spirv.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake\generated\shader_spirv.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\shaderc.dir\generated\shader_spirv.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shaderc.dir/generated/shader_spirv.cpp.s"
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\shaderc.dir\generated\shader_spirv.cpp.s /c C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake\generated\shader_spirv.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug

# Object files for target shaderc
shaderc_OBJECTS = \
"CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc.cpp.obj" \
"CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_glsl.cpp.obj" \
"CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_hlsl.cpp.obj" \
"CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_pssl.cpp.obj" \
"CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_spirv.cpp.obj" \
"CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_metal.cpp.obj" \
"CMakeFiles\shaderc.dir\generated\vertexlayout.cpp.obj" \
"CMakeFiles\shaderc.dir\generated\shader_spirv.cpp.obj"

# External object files for target shaderc
shaderc_EXTERNAL_OBJECTS =

bgfx.cmake\shaderc.exe: bgfx.cmake\CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc.cpp.obj
bgfx.cmake\shaderc.exe: bgfx.cmake\CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_glsl.cpp.obj
bgfx.cmake\shaderc.exe: bgfx.cmake\CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_hlsl.cpp.obj
bgfx.cmake\shaderc.exe: bgfx.cmake\CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_pssl.cpp.obj
bgfx.cmake\shaderc.exe: bgfx.cmake\CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_spirv.cpp.obj
bgfx.cmake\shaderc.exe: bgfx.cmake\CMakeFiles\shaderc.dir\bgfx\tools\shaderc\shaderc_metal.cpp.obj
bgfx.cmake\shaderc.exe: bgfx.cmake\CMakeFiles\shaderc.dir\generated\vertexlayout.cpp.obj
bgfx.cmake\shaderc.exe: bgfx.cmake\CMakeFiles\shaderc.dir\generated\shader_spirv.cpp.obj
bgfx.cmake\shaderc.exe: bgfx.cmake\CMakeFiles\shaderc.dir\build.make
bgfx.cmake\shaderc.exe: bgfx.cmake\bx.lib
bgfx.cmake\shaderc.exe: bgfx.cmake\bimg.lib
bgfx.cmake\shaderc.exe: bgfx.cmake\fcpp.lib
bgfx.cmake\shaderc.exe: bgfx.cmake\glsl-optimizer.lib
bgfx.cmake\shaderc.exe: bgfx.cmake\glslang.lib
bgfx.cmake\shaderc.exe: bgfx.cmake\spirv-cross.lib
bgfx.cmake\shaderc.exe: bgfx.cmake\spirv-tools.lib
bgfx.cmake\shaderc.exe: bgfx.cmake\astc-codec.lib
bgfx.cmake\shaderc.exe: bgfx.cmake\astc.lib
bgfx.cmake\shaderc.exe: bgfx.cmake\edtaa3.lib
bgfx.cmake\shaderc.exe: bgfx.cmake\etc1.lib
bgfx.cmake\shaderc.exe: bgfx.cmake\etc2.lib
bgfx.cmake\shaderc.exe: bgfx.cmake\iqa.lib
bgfx.cmake\shaderc.exe: bgfx.cmake\squish.lib
bgfx.cmake\shaderc.exe: bgfx.cmake\nvtt.lib
bgfx.cmake\shaderc.exe: bgfx.cmake\bx.lib
bgfx.cmake\shaderc.exe: bgfx.cmake\pvrtc.lib
bgfx.cmake\shaderc.exe: bgfx.cmake\glcpp.lib
bgfx.cmake\shaderc.exe: bgfx.cmake\mesa.lib
bgfx.cmake\shaderc.exe: bgfx.cmake\CMakeFiles\shaderc.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable shaderc.exe"
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake
	"C:\Program Files\JetBrains\CLion 2021.1\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\shaderc.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x86\mt.exe --manifests -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\shaderc.dir\objects1.rsp @<<
 /out:shaderc.exe /implib:shaderc.lib /pdb:C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake\shaderc.pdb /version:0.0 /machine:X86 /debug /INCREMENTAL /subsystem:console  bx.lib bimg.lib fcpp.lib glsl-optimizer.lib glslang.lib spirv-cross.lib spirv-tools.lib astc-codec.lib astc.lib edtaa3.lib etc1.lib etc2.lib iqa.lib squish.lib nvtt.lib bx.lib psapi.lib pvrtc.lib glcpp.lib mesa.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug

# Rule to build all files generated by this target.
bgfx.cmake\CMakeFiles\shaderc.dir\build: bgfx.cmake\shaderc.exe

.PHONY : bgfx.cmake\CMakeFiles\shaderc.dir\build

bgfx.cmake\CMakeFiles\shaderc.dir\clean:
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake
	$(CMAKE_COMMAND) -P CMakeFiles\shaderc.dir\cmake_clean.cmake
	cd C:\Users\carol\Documents\D7049E\cmake-build-debug
.PHONY : bgfx.cmake\CMakeFiles\shaderc.dir\clean

bgfx.cmake\CMakeFiles\shaderc.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\carol\Documents\D7049E C:\Users\carol\Documents\D7049E\bgfx.cmake C:\Users\carol\Documents\D7049E\cmake-build-debug C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake C:\Users\carol\Documents\D7049E\cmake-build-debug\bgfx.cmake\CMakeFiles\shaderc.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : bgfx.cmake\CMakeFiles\shaderc.dir\depend

