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
CMAKE_BINARY_DIR = C:\Users\carol\Documents\D7049E\cmake-build-release

# Include any dependencies generated for this target.
include bgfx.cmake\CMakeFiles\spirv-cross.dir\depend.make

# Include the progress variables for this target.
include bgfx.cmake\CMakeFiles\spirv-cross.dir\progress.make

# Include the compile flags for this target's objects.
include bgfx.cmake\CMakeFiles\spirv-cross.dir\flags.make

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\main.cpp.obj: bgfx.cmake\CMakeFiles\spirv-cross.dir\flags.make
bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\main.cpp.obj: ..\bgfx.cmake\bgfx\3rdparty\spirv-cross\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object bgfx.cmake/CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/main.cpp.obj"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\main.cpp.obj /FdCMakeFiles\spirv-cross.dir\spirv-cross.pdb /FS -c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\main.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/main.cpp.i"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\main.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/main.cpp.s"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\main.cpp.s /c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\main.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cfg.cpp.obj: bgfx.cmake\CMakeFiles\spirv-cross.dir\flags.make
bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cfg.cpp.obj: ..\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_cfg.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object bgfx.cmake/CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_cfg.cpp.obj"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cfg.cpp.obj /FdCMakeFiles\spirv-cross.dir\spirv-cross.pdb /FS -c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_cfg.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cfg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_cfg.cpp.i"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cfg.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_cfg.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cfg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_cfg.cpp.s"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cfg.cpp.s /c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_cfg.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cpp.cpp.obj: bgfx.cmake\CMakeFiles\spirv-cross.dir\flags.make
bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cpp.cpp.obj: ..\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_cpp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object bgfx.cmake/CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_cpp.cpp.obj"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cpp.cpp.obj /FdCMakeFiles\spirv-cross.dir\spirv-cross.pdb /FS -c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_cpp.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cpp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_cpp.cpp.i"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cpp.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_cpp.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cpp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_cpp.cpp.s"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cpp.cpp.s /c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_cpp.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross.cpp.obj: bgfx.cmake\CMakeFiles\spirv-cross.dir\flags.make
bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross.cpp.obj: ..\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_cross.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object bgfx.cmake/CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_cross.cpp.obj"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross.cpp.obj /FdCMakeFiles\spirv-cross.dir\spirv-cross.pdb /FS -c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_cross.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_cross.cpp.i"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_cross.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_cross.cpp.s"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross.cpp.s /c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_cross.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross_c.cpp.obj: bgfx.cmake\CMakeFiles\spirv-cross.dir\flags.make
bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross_c.cpp.obj: ..\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_cross_c.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object bgfx.cmake/CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_cross_c.cpp.obj"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross_c.cpp.obj /FdCMakeFiles\spirv-cross.dir\spirv-cross.pdb /FS -c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_cross_c.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross_c.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_cross_c.cpp.i"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross_c.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_cross_c.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross_c.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_cross_c.cpp.s"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross_c.cpp.s /c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_cross_c.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross_parsed_ir.cpp.obj: bgfx.cmake\CMakeFiles\spirv-cross.dir\flags.make
bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross_parsed_ir.cpp.obj: ..\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_cross_parsed_ir.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object bgfx.cmake/CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_cross_parsed_ir.cpp.obj"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross_parsed_ir.cpp.obj /FdCMakeFiles\spirv-cross.dir\spirv-cross.pdb /FS -c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_cross_parsed_ir.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross_parsed_ir.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_cross_parsed_ir.cpp.i"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross_parsed_ir.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_cross_parsed_ir.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross_parsed_ir.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_cross_parsed_ir.cpp.s"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross_parsed_ir.cpp.s /c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_cross_parsed_ir.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross_util.cpp.obj: bgfx.cmake\CMakeFiles\spirv-cross.dir\flags.make
bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross_util.cpp.obj: ..\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_cross_util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object bgfx.cmake/CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_cross_util.cpp.obj"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross_util.cpp.obj /FdCMakeFiles\spirv-cross.dir\spirv-cross.pdb /FS -c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_cross_util.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross_util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_cross_util.cpp.i"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross_util.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_cross_util.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross_util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_cross_util.cpp.s"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross_util.cpp.s /c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_cross_util.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_glsl.cpp.obj: bgfx.cmake\CMakeFiles\spirv-cross.dir\flags.make
bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_glsl.cpp.obj: ..\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_glsl.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object bgfx.cmake/CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_glsl.cpp.obj"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_glsl.cpp.obj /FdCMakeFiles\spirv-cross.dir\spirv-cross.pdb /FS -c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_glsl.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_glsl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_glsl.cpp.i"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_glsl.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_glsl.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_glsl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_glsl.cpp.s"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_glsl.cpp.s /c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_glsl.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_hlsl.cpp.obj: bgfx.cmake\CMakeFiles\spirv-cross.dir\flags.make
bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_hlsl.cpp.obj: ..\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_hlsl.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object bgfx.cmake/CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_hlsl.cpp.obj"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_hlsl.cpp.obj /FdCMakeFiles\spirv-cross.dir\spirv-cross.pdb /FS -c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_hlsl.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_hlsl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_hlsl.cpp.i"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_hlsl.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_hlsl.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_hlsl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_hlsl.cpp.s"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_hlsl.cpp.s /c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_hlsl.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_msl.cpp.obj: bgfx.cmake\CMakeFiles\spirv-cross.dir\flags.make
bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_msl.cpp.obj: ..\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_msl.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object bgfx.cmake/CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_msl.cpp.obj"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_msl.cpp.obj /FdCMakeFiles\spirv-cross.dir\spirv-cross.pdb /FS -c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_msl.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_msl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_msl.cpp.i"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_msl.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_msl.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_msl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_msl.cpp.s"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_msl.cpp.s /c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_msl.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_parser.cpp.obj: bgfx.cmake\CMakeFiles\spirv-cross.dir\flags.make
bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_parser.cpp.obj: ..\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_parser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object bgfx.cmake/CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_parser.cpp.obj"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_parser.cpp.obj /FdCMakeFiles\spirv-cross.dir\spirv-cross.pdb /FS -c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_parser.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_parser.cpp.i"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_parser.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_parser.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_parser.cpp.s"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_parser.cpp.s /c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_parser.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_reflect.cpp.obj: bgfx.cmake\CMakeFiles\spirv-cross.dir\flags.make
bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_reflect.cpp.obj: ..\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_reflect.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object bgfx.cmake/CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_reflect.cpp.obj"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_reflect.cpp.obj /FdCMakeFiles\spirv-cross.dir\spirv-cross.pdb /FS -c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_reflect.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_reflect.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_reflect.cpp.i"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_reflect.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_reflect.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_reflect.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spirv-cross.dir/bgfx/3rdparty/spirv-cross/spirv_reflect.cpp.s"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_reflect.cpp.s /c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\spirv-cross\spirv_reflect.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

# Object files for target spirv-cross
spirv__cross_OBJECTS = \
"CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\main.cpp.obj" \
"CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cfg.cpp.obj" \
"CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cpp.cpp.obj" \
"CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross.cpp.obj" \
"CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross_c.cpp.obj" \
"CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross_parsed_ir.cpp.obj" \
"CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross_util.cpp.obj" \
"CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_glsl.cpp.obj" \
"CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_hlsl.cpp.obj" \
"CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_msl.cpp.obj" \
"CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_parser.cpp.obj" \
"CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_reflect.cpp.obj"

# External object files for target spirv-cross
spirv__cross_EXTERNAL_OBJECTS =

bgfx.cmake\spirv-cross.lib: bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\main.cpp.obj
bgfx.cmake\spirv-cross.lib: bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cfg.cpp.obj
bgfx.cmake\spirv-cross.lib: bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cpp.cpp.obj
bgfx.cmake\spirv-cross.lib: bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross.cpp.obj
bgfx.cmake\spirv-cross.lib: bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross_c.cpp.obj
bgfx.cmake\spirv-cross.lib: bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross_parsed_ir.cpp.obj
bgfx.cmake\spirv-cross.lib: bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_cross_util.cpp.obj
bgfx.cmake\spirv-cross.lib: bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_glsl.cpp.obj
bgfx.cmake\spirv-cross.lib: bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_hlsl.cpp.obj
bgfx.cmake\spirv-cross.lib: bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_msl.cpp.obj
bgfx.cmake\spirv-cross.lib: bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_parser.cpp.obj
bgfx.cmake\spirv-cross.lib: bgfx.cmake\CMakeFiles\spirv-cross.dir\bgfx\3rdparty\spirv-cross\spirv_reflect.cpp.obj
bgfx.cmake\spirv-cross.lib: bgfx.cmake\CMakeFiles\spirv-cross.dir\build.make
bgfx.cmake\spirv-cross.lib: bgfx.cmake\CMakeFiles\spirv-cross.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX static library spirv-cross.lib"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	$(CMAKE_COMMAND) -P CMakeFiles\spirv-cross.dir\cmake_clean_target.cmake
	cd C:\Users\carol\Documents\D7049E\cmake-build-release
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\lib.exe /nologo /machine:X86 /out:spirv-cross.lib @CMakeFiles\spirv-cross.dir\objects1.rsp 
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

# Rule to build all files generated by this target.
bgfx.cmake\CMakeFiles\spirv-cross.dir\build: bgfx.cmake\spirv-cross.lib

.PHONY : bgfx.cmake\CMakeFiles\spirv-cross.dir\build

bgfx.cmake\CMakeFiles\spirv-cross.dir\clean:
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	$(CMAKE_COMMAND) -P CMakeFiles\spirv-cross.dir\cmake_clean.cmake
	cd C:\Users\carol\Documents\D7049E\cmake-build-release
.PHONY : bgfx.cmake\CMakeFiles\spirv-cross.dir\clean

bgfx.cmake\CMakeFiles\spirv-cross.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\carol\Documents\D7049E C:\Users\carol\Documents\D7049E\bgfx.cmake C:\Users\carol\Documents\D7049E\cmake-build-release C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake\CMakeFiles\spirv-cross.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : bgfx.cmake\CMakeFiles\spirv-cross.dir\depend

