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
CMAKE_BINARY_DIR = C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug

# Utility rule file for NightlyStart.

# Include the progress variables for this target.
include CMakeFiles\NightlyStart.dir\progress.make

CMakeFiles\NightlyStart:
	echo >nul && "C:\Program Files\JetBrains\CLion 2021.1\bin\cmake\win\bin\ctest.exe" -D NightlyStart

NightlyStart: CMakeFiles\NightlyStart
NightlyStart: CMakeFiles\NightlyStart.dir\build.make

.PHONY : NightlyStart

# Rule to build all files generated by this target.
CMakeFiles\NightlyStart.dir\build: NightlyStart

.PHONY : CMakeFiles\NightlyStart.dir\build

CMakeFiles\NightlyStart.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\NightlyStart.dir\cmake_clean.cmake
.PHONY : CMakeFiles\NightlyStart.dir\clean

CMakeFiles\NightlyStart.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug\CMakeFiles\NightlyStart.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\NightlyStart.dir\depend

