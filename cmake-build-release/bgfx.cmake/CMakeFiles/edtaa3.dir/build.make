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
include bgfx.cmake\CMakeFiles\edtaa3.dir\depend.make

# Include the progress variables for this target.
include bgfx.cmake\CMakeFiles\edtaa3.dir\progress.make

# Include the compile flags for this target's objects.
include bgfx.cmake\CMakeFiles\edtaa3.dir\flags.make

bgfx.cmake\CMakeFiles\edtaa3.dir\bimg\3rdparty\edtaa3\edtaa3func.cpp.obj: bgfx.cmake\CMakeFiles\edtaa3.dir\flags.make
bgfx.cmake\CMakeFiles\edtaa3.dir\bimg\3rdparty\edtaa3\edtaa3func.cpp.obj: ..\bgfx.cmake\bimg\3rdparty\edtaa3\edtaa3func.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object bgfx.cmake/CMakeFiles/edtaa3.dir/bimg/3rdparty/edtaa3/edtaa3func.cpp.obj"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\edtaa3.dir\bimg\3rdparty\edtaa3\edtaa3func.cpp.obj /FdCMakeFiles\edtaa3.dir\edtaa3.pdb /FS -c C:\Users\carol\Documents\D7049E\bgfx.cmake\bimg\3rdparty\edtaa3\edtaa3func.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\edtaa3.dir\bimg\3rdparty\edtaa3\edtaa3func.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/edtaa3.dir/bimg/3rdparty/edtaa3/edtaa3func.cpp.i"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\edtaa3.dir\bimg\3rdparty\edtaa3\edtaa3func.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\carol\Documents\D7049E\bgfx.cmake\bimg\3rdparty\edtaa3\edtaa3func.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\edtaa3.dir\bimg\3rdparty\edtaa3\edtaa3func.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/edtaa3.dir/bimg/3rdparty/edtaa3/edtaa3func.cpp.s"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\edtaa3.dir\bimg\3rdparty\edtaa3\edtaa3func.cpp.s /c C:\Users\carol\Documents\D7049E\bgfx.cmake\bimg\3rdparty\edtaa3\edtaa3func.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

# Object files for target edtaa3
edtaa3_OBJECTS = \
"CMakeFiles\edtaa3.dir\bimg\3rdparty\edtaa3\edtaa3func.cpp.obj"

# External object files for target edtaa3
edtaa3_EXTERNAL_OBJECTS =

bgfx.cmake\edtaa3.lib: bgfx.cmake\CMakeFiles\edtaa3.dir\bimg\3rdparty\edtaa3\edtaa3func.cpp.obj
bgfx.cmake\edtaa3.lib: bgfx.cmake\CMakeFiles\edtaa3.dir\build.make
bgfx.cmake\edtaa3.lib: bgfx.cmake\CMakeFiles\edtaa3.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library edtaa3.lib"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	$(CMAKE_COMMAND) -P CMakeFiles\edtaa3.dir\cmake_clean_target.cmake
	cd C:\Users\carol\Documents\D7049E\cmake-build-release
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\lib.exe /nologo /machine:X86 /out:edtaa3.lib @CMakeFiles\edtaa3.dir\objects1.rsp 
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

# Rule to build all files generated by this target.
bgfx.cmake\CMakeFiles\edtaa3.dir\build: bgfx.cmake\edtaa3.lib

.PHONY : bgfx.cmake\CMakeFiles\edtaa3.dir\build

bgfx.cmake\CMakeFiles\edtaa3.dir\clean:
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	$(CMAKE_COMMAND) -P CMakeFiles\edtaa3.dir\cmake_clean.cmake
	cd C:\Users\carol\Documents\D7049E\cmake-build-release
.PHONY : bgfx.cmake\CMakeFiles\edtaa3.dir\clean

bgfx.cmake\CMakeFiles\edtaa3.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\carol\Documents\D7049E C:\Users\carol\Documents\D7049E\bgfx.cmake C:\Users\carol\Documents\D7049E\cmake-build-release C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake\CMakeFiles\edtaa3.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : bgfx.cmake\CMakeFiles\edtaa3.dir\depend

