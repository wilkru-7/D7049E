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
CMAKE_BINARY_DIR = C:\Users\wilma\Documents\D7049E\cmake-build-debug

# Include any dependencies generated for this target.
include bgfx.cmake\CMakeFiles\geometryc.dir\depend.make

# Include the progress variables for this target.
include bgfx.cmake\CMakeFiles\geometryc.dir\progress.make

# Include the compile flags for this target's objects.
include bgfx.cmake\CMakeFiles\geometryc.dir\flags.make

bgfx.cmake\CMakeFiles\geometryc.dir\bgfx\tools\geometryc\geometryc.cpp.obj: bgfx.cmake\CMakeFiles\geometryc.dir\flags.make
bgfx.cmake\CMakeFiles\geometryc.dir\bgfx\tools\geometryc\geometryc.cpp.obj: ..\bgfx.cmake\bgfx\tools\geometryc\geometryc.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\wilma\Documents\D7049E\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object bgfx.cmake/CMakeFiles/geometryc.dir/bgfx/tools/geometryc/geometryc.cpp.obj"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\geometryc.dir\bgfx\tools\geometryc\geometryc.cpp.obj /FdCMakeFiles\geometryc.dir\ /FS -c C:\Users\wilma\Documents\D7049E\bgfx.cmake\bgfx\tools\geometryc\geometryc.cpp
<<
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\geometryc.dir\bgfx\tools\geometryc\geometryc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/geometryc.dir/bgfx/tools/geometryc/geometryc.cpp.i"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe > CMakeFiles\geometryc.dir\bgfx\tools\geometryc\geometryc.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\wilma\Documents\D7049E\bgfx.cmake\bgfx\tools\geometryc\geometryc.cpp
<<
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\geometryc.dir\bgfx\tools\geometryc\geometryc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/geometryc.dir/bgfx/tools/geometryc/geometryc.cpp.s"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\geometryc.dir\bgfx\tools\geometryc\geometryc.cpp.s /c C:\Users\wilma\Documents\D7049E\bgfx.cmake\bgfx\tools\geometryc\geometryc.cpp
<<
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\geometryc.dir\generated\bounds.cpp.obj: bgfx.cmake\CMakeFiles\geometryc.dir\flags.make
bgfx.cmake\CMakeFiles\geometryc.dir\generated\bounds.cpp.obj: bgfx.cmake\generated\bounds.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\wilma\Documents\D7049E\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object bgfx.cmake/CMakeFiles/geometryc.dir/generated/bounds.cpp.obj"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\geometryc.dir\generated\bounds.cpp.obj /FdCMakeFiles\geometryc.dir\ /FS -c C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake\generated\bounds.cpp
<<
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\geometryc.dir\generated\bounds.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/geometryc.dir/generated/bounds.cpp.i"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe > CMakeFiles\geometryc.dir\generated\bounds.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake\generated\bounds.cpp
<<
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\geometryc.dir\generated\bounds.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/geometryc.dir/generated/bounds.cpp.s"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\geometryc.dir\generated\bounds.cpp.s /c C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake\generated\bounds.cpp
<<
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\geometryc.dir\generated\vertexlayout.cpp.obj: bgfx.cmake\CMakeFiles\geometryc.dir\flags.make
bgfx.cmake\CMakeFiles\geometryc.dir\generated\vertexlayout.cpp.obj: bgfx.cmake\generated\vertexlayout.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\wilma\Documents\D7049E\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object bgfx.cmake/CMakeFiles/geometryc.dir/generated/vertexlayout.cpp.obj"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\geometryc.dir\generated\vertexlayout.cpp.obj /FdCMakeFiles\geometryc.dir\ /FS -c C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake\generated\vertexlayout.cpp
<<
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\geometryc.dir\generated\vertexlayout.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/geometryc.dir/generated/vertexlayout.cpp.i"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe > CMakeFiles\geometryc.dir\generated\vertexlayout.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake\generated\vertexlayout.cpp
<<
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\geometryc.dir\generated\vertexlayout.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/geometryc.dir/generated/vertexlayout.cpp.s"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\geometryc.dir\generated\vertexlayout.cpp.s /c C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake\generated\vertexlayout.cpp
<<
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug

# Object files for target geometryc
geometryc_OBJECTS = \
"CMakeFiles\geometryc.dir\bgfx\tools\geometryc\geometryc.cpp.obj" \
"CMakeFiles\geometryc.dir\generated\bounds.cpp.obj" \
"CMakeFiles\geometryc.dir\generated\vertexlayout.cpp.obj"

# External object files for target geometryc
geometryc_EXTERNAL_OBJECTS =

bgfx.cmake\geometryc.exe: bgfx.cmake\CMakeFiles\geometryc.dir\bgfx\tools\geometryc\geometryc.cpp.obj
bgfx.cmake\geometryc.exe: bgfx.cmake\CMakeFiles\geometryc.dir\generated\bounds.cpp.obj
bgfx.cmake\geometryc.exe: bgfx.cmake\CMakeFiles\geometryc.dir\generated\vertexlayout.cpp.obj
bgfx.cmake\geometryc.exe: bgfx.cmake\CMakeFiles\geometryc.dir\build.make
bgfx.cmake\geometryc.exe: bgfx.cmake\bx.lib
bgfx.cmake\geometryc.exe: bgfx.cmake\meshoptimizer.lib
bgfx.cmake\geometryc.exe: bgfx.cmake\CMakeFiles\geometryc.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\wilma\Documents\D7049E\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable geometryc.exe"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake
	"C:\Program Files\JetBrains\CLion 2021.1\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\geometryc.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\mt.exe --manifests -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\geometryc.dir\objects1.rsp @<<
 /out:geometryc.exe /implib:geometryc.lib /pdb:C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake\geometryc.pdb /version:0.0 /machine:X86 /debug /INCREMENTAL /subsystem:console  bx.lib meshoptimizer.lib psapi.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug

# Rule to build all files generated by this target.
bgfx.cmake\CMakeFiles\geometryc.dir\build: bgfx.cmake\geometryc.exe

.PHONY : bgfx.cmake\CMakeFiles\geometryc.dir\build

bgfx.cmake\CMakeFiles\geometryc.dir\clean:
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake
	$(CMAKE_COMMAND) -P CMakeFiles\geometryc.dir\cmake_clean.cmake
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug
.PHONY : bgfx.cmake\CMakeFiles\geometryc.dir\clean

bgfx.cmake\CMakeFiles\geometryc.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\wilma\Documents\D7049E C:\Users\wilma\Documents\D7049E\bgfx.cmake C:\Users\wilma\Documents\D7049E\cmake-build-debug C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake\CMakeFiles\geometryc.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : bgfx.cmake\CMakeFiles\geometryc.dir\depend

