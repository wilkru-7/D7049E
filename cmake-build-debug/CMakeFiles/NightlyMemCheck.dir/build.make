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

# Utility rule file for NightlyMemCheck.

# Include the progress variables for this target.
include CMakeFiles\NightlyMemCheck.dir\progress.make

CMakeFiles\NightlyMemCheck:
	echo >nul && "C:\Program Files\JetBrains\CLion 2021.1\bin\cmake\win\bin\ctest.exe" -D NightlyMemCheck

NightlyMemCheck: CMakeFiles\NightlyMemCheck
NightlyMemCheck: CMakeFiles\NightlyMemCheck.dir\build.make

.PHONY : NightlyMemCheck

# Rule to build all files generated by this target.
CMakeFiles\NightlyMemCheck.dir\build: NightlyMemCheck

.PHONY : CMakeFiles\NightlyMemCheck.dir\build

CMakeFiles\NightlyMemCheck.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\NightlyMemCheck.dir\cmake_clean.cmake
.PHONY : CMakeFiles\NightlyMemCheck.dir\clean

CMakeFiles\NightlyMemCheck.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\carol\Documents\D7049E C:\Users\carol\Documents\D7049E C:\Users\carol\Documents\D7049E\cmake-build-debug C:\Users\carol\Documents\D7049E\cmake-build-debug C:\Users\carol\Documents\D7049E\cmake-build-debug\CMakeFiles\NightlyMemCheck.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\NightlyMemCheck.dir\depend

