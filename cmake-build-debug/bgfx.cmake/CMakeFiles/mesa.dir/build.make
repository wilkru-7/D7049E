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
include bgfx.cmake\CMakeFiles\mesa.dir\depend.make

# Include the progress variables for this target.
include bgfx.cmake\CMakeFiles\mesa.dir\progress.make

# Include the compile flags for this target's objects.
include bgfx.cmake\CMakeFiles\mesa.dir\flags.make

bgfx.cmake\CMakeFiles\mesa.dir\bgfx\3rdparty\glsl-optimizer\src\mesa\main\imports.c.obj: bgfx.cmake\CMakeFiles\mesa.dir\flags.make
bgfx.cmake\CMakeFiles\mesa.dir\bgfx\3rdparty\glsl-optimizer\src\mesa\main\imports.c.obj: ..\bgfx.cmake\bgfx\3rdparty\glsl-optimizer\src\mesa\main\imports.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object bgfx.cmake/CMakeFiles/mesa.dir/bgfx/3rdparty/glsl-optimizer/src/mesa/main/imports.c.obj"
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~4\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\mesa.dir\bgfx\3rdparty\glsl-optimizer\src\mesa\main\imports.c.obj /FdCMakeFiles\mesa.dir\mesa.pdb /FS -c C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\bgfx.cmake\bgfx\3rdparty\glsl-optimizer\src\mesa\main\imports.c
<<
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\mesa.dir\bgfx\3rdparty\glsl-optimizer\src\mesa\main\imports.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mesa.dir/bgfx/3rdparty/glsl-optimizer/src/mesa/main/imports.c.i"
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~4\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\mesa.dir\bgfx\3rdparty\glsl-optimizer\src\mesa\main\imports.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\bgfx.cmake\bgfx\3rdparty\glsl-optimizer\src\mesa\main\imports.c
<<
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\mesa.dir\bgfx\3rdparty\glsl-optimizer\src\mesa\main\imports.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mesa.dir/bgfx/3rdparty/glsl-optimizer/src/mesa/main/imports.c.s"
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~4\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\mesa.dir\bgfx\3rdparty\glsl-optimizer\src\mesa\main\imports.c.s /c C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\bgfx.cmake\bgfx\3rdparty\glsl-optimizer\src\mesa\main\imports.c
<<
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\mesa.dir\bgfx\3rdparty\glsl-optimizer\src\mesa\program\prog_hash_table.c.obj: bgfx.cmake\CMakeFiles\mesa.dir\flags.make
bgfx.cmake\CMakeFiles\mesa.dir\bgfx\3rdparty\glsl-optimizer\src\mesa\program\prog_hash_table.c.obj: ..\bgfx.cmake\bgfx\3rdparty\glsl-optimizer\src\mesa\program\prog_hash_table.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object bgfx.cmake/CMakeFiles/mesa.dir/bgfx/3rdparty/glsl-optimizer/src/mesa/program/prog_hash_table.c.obj"
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~4\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\mesa.dir\bgfx\3rdparty\glsl-optimizer\src\mesa\program\prog_hash_table.c.obj /FdCMakeFiles\mesa.dir\mesa.pdb /FS -c C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\bgfx.cmake\bgfx\3rdparty\glsl-optimizer\src\mesa\program\prog_hash_table.c
<<
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\mesa.dir\bgfx\3rdparty\glsl-optimizer\src\mesa\program\prog_hash_table.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mesa.dir/bgfx/3rdparty/glsl-optimizer/src/mesa/program/prog_hash_table.c.i"
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~4\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\mesa.dir\bgfx\3rdparty\glsl-optimizer\src\mesa\program\prog_hash_table.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\bgfx.cmake\bgfx\3rdparty\glsl-optimizer\src\mesa\program\prog_hash_table.c
<<
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\mesa.dir\bgfx\3rdparty\glsl-optimizer\src\mesa\program\prog_hash_table.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mesa.dir/bgfx/3rdparty/glsl-optimizer/src/mesa/program/prog_hash_table.c.s"
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~4\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\mesa.dir\bgfx\3rdparty\glsl-optimizer\src\mesa\program\prog_hash_table.c.s /c C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\bgfx.cmake\bgfx\3rdparty\glsl-optimizer\src\mesa\program\prog_hash_table.c
<<
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\mesa.dir\bgfx\3rdparty\glsl-optimizer\src\mesa\program\symbol_table.c.obj: bgfx.cmake\CMakeFiles\mesa.dir\flags.make
bgfx.cmake\CMakeFiles\mesa.dir\bgfx\3rdparty\glsl-optimizer\src\mesa\program\symbol_table.c.obj: ..\bgfx.cmake\bgfx\3rdparty\glsl-optimizer\src\mesa\program\symbol_table.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object bgfx.cmake/CMakeFiles/mesa.dir/bgfx/3rdparty/glsl-optimizer/src/mesa/program/symbol_table.c.obj"
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~4\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\mesa.dir\bgfx\3rdparty\glsl-optimizer\src\mesa\program\symbol_table.c.obj /FdCMakeFiles\mesa.dir\mesa.pdb /FS -c C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\bgfx.cmake\bgfx\3rdparty\glsl-optimizer\src\mesa\program\symbol_table.c
<<
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\mesa.dir\bgfx\3rdparty\glsl-optimizer\src\mesa\program\symbol_table.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mesa.dir/bgfx/3rdparty/glsl-optimizer/src/mesa/program/symbol_table.c.i"
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~4\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\mesa.dir\bgfx\3rdparty\glsl-optimizer\src\mesa\program\symbol_table.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\bgfx.cmake\bgfx\3rdparty\glsl-optimizer\src\mesa\program\symbol_table.c
<<
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\mesa.dir\bgfx\3rdparty\glsl-optimizer\src\mesa\program\symbol_table.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mesa.dir/bgfx/3rdparty/glsl-optimizer/src/mesa/program/symbol_table.c.s"
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~4\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\mesa.dir\bgfx\3rdparty\glsl-optimizer\src\mesa\program\symbol_table.c.s /c C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\bgfx.cmake\bgfx\3rdparty\glsl-optimizer\src\mesa\program\symbol_table.c
<<
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug

# Object files for target mesa
mesa_OBJECTS = \
"CMakeFiles\mesa.dir\bgfx\3rdparty\glsl-optimizer\src\mesa\main\imports.c.obj" \
"CMakeFiles\mesa.dir\bgfx\3rdparty\glsl-optimizer\src\mesa\program\prog_hash_table.c.obj" \
"CMakeFiles\mesa.dir\bgfx\3rdparty\glsl-optimizer\src\mesa\program\symbol_table.c.obj"

# External object files for target mesa
mesa_EXTERNAL_OBJECTS =

bgfx.cmake\mesa.lib: bgfx.cmake\CMakeFiles\mesa.dir\bgfx\3rdparty\glsl-optimizer\src\mesa\main\imports.c.obj
bgfx.cmake\mesa.lib: bgfx.cmake\CMakeFiles\mesa.dir\bgfx\3rdparty\glsl-optimizer\src\mesa\program\prog_hash_table.c.obj
bgfx.cmake\mesa.lib: bgfx.cmake\CMakeFiles\mesa.dir\bgfx\3rdparty\glsl-optimizer\src\mesa\program\symbol_table.c.obj
bgfx.cmake\mesa.lib: bgfx.cmake\CMakeFiles\mesa.dir\build.make
bgfx.cmake\mesa.lib: bgfx.cmake\CMakeFiles\mesa.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C static library mesa.lib"
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug\bgfx.cmake
	$(CMAKE_COMMAND) -P CMakeFiles\mesa.dir\cmake_clean_target.cmake
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~4\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\lib.exe /nologo /machine:X86 /out:mesa.lib @CMakeFiles\mesa.dir\objects1.rsp 
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug

# Rule to build all files generated by this target.
bgfx.cmake\CMakeFiles\mesa.dir\build: bgfx.cmake\mesa.lib

.PHONY : bgfx.cmake\CMakeFiles\mesa.dir\build

bgfx.cmake\CMakeFiles\mesa.dir\clean:
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug\bgfx.cmake
	$(CMAKE_COMMAND) -P CMakeFiles\mesa.dir\cmake_clean.cmake
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug
.PHONY : bgfx.cmake\CMakeFiles\mesa.dir\clean

bgfx.cmake\CMakeFiles\mesa.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\bgfx.cmake C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug\bgfx.cmake C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-debug\bgfx.cmake\CMakeFiles\mesa.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : bgfx.cmake\CMakeFiles\mesa.dir\depend

