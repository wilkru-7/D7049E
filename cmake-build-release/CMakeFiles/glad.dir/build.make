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
CMAKE_SOURCE_DIR = C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-release

# Include any dependencies generated for this target.
include CMakeFiles\glad.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\glad.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\glad.dir\flags.make

CMakeFiles\glad.dir\glad\src\glad.c.obj: CMakeFiles\glad.dir\flags.make
CMakeFiles\glad.dir\glad\src\glad.c.obj: ..\glad\src\glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/glad.dir/glad/src/glad.c.obj"
	C:\PROGRA~2\MICROS~4\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\glad.dir\glad\src\glad.c.obj /FdCMakeFiles\glad.dir\glad.pdb /FS -c C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\glad\src\glad.c
<<

CMakeFiles\glad.dir\glad\src\glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glad.dir/glad/src/glad.c.i"
	C:\PROGRA~2\MICROS~4\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\glad.dir\glad\src\glad.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\glad\src\glad.c
<<

CMakeFiles\glad.dir\glad\src\glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glad.dir/glad/src/glad.c.s"
	C:\PROGRA~2\MICROS~4\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\glad.dir\glad\src\glad.c.s /c C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\glad\src\glad.c
<<

# Object files for target glad
glad_OBJECTS = \
"CMakeFiles\glad.dir\glad\src\glad.c.obj"

# External object files for target glad
glad_EXTERNAL_OBJECTS =

glad.lib: CMakeFiles\glad.dir\glad\src\glad.c.obj
glad.lib: CMakeFiles\glad.dir\build.make
glad.lib: CMakeFiles\glad.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library glad.lib"
	$(CMAKE_COMMAND) -P CMakeFiles\glad.dir\cmake_clean_target.cmake
	C:\PROGRA~2\MICROS~4\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\lib.exe /nologo /machine:X86 /out:glad.lib @CMakeFiles\glad.dir\objects1.rsp 

# Rule to build all files generated by this target.
CMakeFiles\glad.dir\build: glad.lib

.PHONY : CMakeFiles\glad.dir\build

CMakeFiles\glad.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\glad.dir\cmake_clean.cmake
.PHONY : CMakeFiles\glad.dir\clean

CMakeFiles\glad.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-release C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-release C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-release\CMakeFiles\glad.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\glad.dir\depend

