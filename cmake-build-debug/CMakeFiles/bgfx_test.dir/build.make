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

# Include any dependencies generated for this target.
include CMakeFiles\bgfx_test.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\bgfx_test.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\bgfx_test.dir\flags.make

CMakeFiles\bgfx_test.dir\main.cpp.obj: CMakeFiles\bgfx_test.dir\flags.make
CMakeFiles\bgfx_test.dir\main.cpp.obj: ..\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/bgfx_test.dir/main.cpp.obj"
	C:\PROGRA~2\MICROS~4\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\bgfx_test.dir\main.cpp.obj /FdCMakeFiles\bgfx_test.dir\ /FS -c C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\main.cpp
<<

CMakeFiles\bgfx_test.dir\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bgfx_test.dir/main.cpp.i"
	C:\PROGRA~2\MICROS~4\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\bgfx_test.dir\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\main.cpp
<<

CMakeFiles\bgfx_test.dir\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bgfx_test.dir/main.cpp.s"
	C:\PROGRA~2\MICROS~4\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\bgfx_test.dir\main.cpp.s /c C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\main.cpp
<<

# Object files for target bgfx_test
bgfx_test_OBJECTS = \
"CMakeFiles\bgfx_test.dir\main.cpp.obj"

# External object files for target bgfx_test
bgfx_test_EXTERNAL_OBJECTS =

bgfx_test.exe: CMakeFiles\bgfx_test.dir\main.cpp.obj
bgfx_test.exe: CMakeFiles\bgfx_test.dir\build.make
bgfx_test.exe: bgfx.cmake\bgfx.lib
bgfx_test.exe: bgfx.cmake\example-common.lib
bgfx_test.exe: glfw\src\glfw3.lib
bgfx_test.exe: bgfx.cmake\bgfx.lib
bgfx_test.exe: bgfx.cmake\bimg.lib
bgfx_test.exe: bgfx.cmake\astc-codec.lib
bgfx_test.exe: bgfx.cmake\astc.lib
bgfx_test.exe: bgfx.cmake\edtaa3.lib
bgfx_test.exe: bgfx.cmake\etc1.lib
bgfx_test.exe: bgfx.cmake\etc2.lib
bgfx_test.exe: bgfx.cmake\iqa.lib
bgfx_test.exe: bgfx.cmake\squish.lib
bgfx_test.exe: bgfx.cmake\nvtt.lib
bgfx_test.exe: bgfx.cmake\pvrtc.lib
bgfx_test.exe: bgfx.cmake\dear-imgui.lib
bgfx_test.exe: bgfx.cmake\bx.lib
bgfx_test.exe: bgfx.cmake\meshoptimizer.lib
bgfx_test.exe: CMakeFiles\bgfx_test.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bgfx_test.exe"
	"C:\Program Files\JetBrains\CLion 2021.1\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\bgfx_test.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x86\mt.exe --manifests -- C:\PROGRA~2\MICROS~4\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\bgfx_test.dir\objects1.rsp @<<
 /out:bgfx_test.exe /implib:bgfx_test.lib /pdb:C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug\bgfx_test.pdb /version:0.0 /machine:X86 /debug /INCREMENTAL /subsystem:console  bgfx.cmake\bgfx.lib bgfx.cmake\example-common.lib glfw\src\glfw3.lib bgfx.cmake\bgfx.lib bgfx.cmake\bimg.lib bgfx.cmake\astc-codec.lib bgfx.cmake\astc.lib bgfx.cmake\edtaa3.lib bgfx.cmake\etc1.lib bgfx.cmake\etc2.lib bgfx.cmake\iqa.lib bgfx.cmake\squish.lib bgfx.cmake\nvtt.lib bgfx.cmake\pvrtc.lib bgfx.cmake\dear-imgui.lib bgfx.cmake\bx.lib psapi.lib bgfx.cmake\meshoptimizer.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\bgfx_test.dir\build: bgfx_test.exe

.PHONY : CMakeFiles\bgfx_test.dir\build

CMakeFiles\bgfx_test.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\bgfx_test.dir\cmake_clean.cmake
.PHONY : CMakeFiles\bgfx_test.dir\clean

CMakeFiles\bgfx_test.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug\CMakeFiles\bgfx_test.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\bgfx_test.dir\depend

