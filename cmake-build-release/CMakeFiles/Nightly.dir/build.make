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
CMAKE_SOURCE_DIR = C:\Users\wilma\Documents\D7049E

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\wilma\Documents\D7049E\cmake-build-release

# Utility rule file for Nightly.

# Include the progress variables for this target.
include CMakeFiles\Nightly.dir\progress.make

CMakeFiles\Nightly:
	echo >nul && "C:\Program Files\JetBrains\CLion 2021.1\bin\cmake\win\bin\ctest.exe" -D Nightly

Nightly: CMakeFiles\Nightly
Nightly: CMakeFiles\Nightly.dir\build.make

.PHONY : Nightly

# Rule to build all files generated by this target.
CMakeFiles\Nightly.dir\build: Nightly

.PHONY : CMakeFiles\Nightly.dir\build

CMakeFiles\Nightly.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Nightly.dir\cmake_clean.cmake
.PHONY : CMakeFiles\Nightly.dir\clean

CMakeFiles\Nightly.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\wilma\Documents\D7049E C:\Users\wilma\Documents\D7049E C:\Users\wilma\Documents\D7049E\cmake-build-release C:\Users\wilma\Documents\D7049E\cmake-build-release C:\Users\wilma\Documents\D7049E\cmake-build-release\CMakeFiles\Nightly.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\Nightly.dir\depend

