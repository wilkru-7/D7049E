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
include bgfx.cmake\CMakeFiles\dear-imgui.dir\depend.make

# Include the progress variables for this target.
include bgfx.cmake\CMakeFiles\dear-imgui.dir\progress.make

# Include the compile flags for this target's objects.
include bgfx.cmake\CMakeFiles\dear-imgui.dir\flags.make

bgfx.cmake\CMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui.cpp.obj: bgfx.cmake\CMakeFiles\dear-imgui.dir\flags.make
bgfx.cmake\CMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui.cpp.obj: ..\bgfx.cmake\bgfx\3rdparty\dear-imgui\imgui.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\wilma\Documents\D7049E\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object bgfx.cmake/CMakeFiles/dear-imgui.dir/bgfx/3rdparty/dear-imgui/imgui.cpp.obj"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui.cpp.obj /FdCMakeFiles\dear-imgui.dir\dear-imgui.pdb /FS -c C:\Users\wilma\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\dear-imgui\imgui.cpp
<<
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dear-imgui.dir/bgfx/3rdparty/dear-imgui/imgui.cpp.i"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe > CMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\wilma\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\dear-imgui\imgui.cpp
<<
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dear-imgui.dir/bgfx/3rdparty/dear-imgui/imgui.cpp.s"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui.cpp.s /c C:\Users\wilma\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\dear-imgui\imgui.cpp
<<
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui_demo.cpp.obj: bgfx.cmake\CMakeFiles\dear-imgui.dir\flags.make
bgfx.cmake\CMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui_demo.cpp.obj: ..\bgfx.cmake\bgfx\3rdparty\dear-imgui\imgui_demo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\wilma\Documents\D7049E\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object bgfx.cmake/CMakeFiles/dear-imgui.dir/bgfx/3rdparty/dear-imgui/imgui_demo.cpp.obj"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui_demo.cpp.obj /FdCMakeFiles\dear-imgui.dir\dear-imgui.pdb /FS -c C:\Users\wilma\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\dear-imgui\imgui_demo.cpp
<<
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dear-imgui.dir/bgfx/3rdparty/dear-imgui/imgui_demo.cpp.i"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe > CMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui_demo.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\wilma\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\dear-imgui\imgui_demo.cpp
<<
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dear-imgui.dir/bgfx/3rdparty/dear-imgui/imgui_demo.cpp.s"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui_demo.cpp.s /c C:\Users\wilma\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\dear-imgui\imgui_demo.cpp
<<
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui_draw.cpp.obj: bgfx.cmake\CMakeFiles\dear-imgui.dir\flags.make
bgfx.cmake\CMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui_draw.cpp.obj: ..\bgfx.cmake\bgfx\3rdparty\dear-imgui\imgui_draw.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\wilma\Documents\D7049E\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object bgfx.cmake/CMakeFiles/dear-imgui.dir/bgfx/3rdparty/dear-imgui/imgui_draw.cpp.obj"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui_draw.cpp.obj /FdCMakeFiles\dear-imgui.dir\dear-imgui.pdb /FS -c C:\Users\wilma\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\dear-imgui\imgui_draw.cpp
<<
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dear-imgui.dir/bgfx/3rdparty/dear-imgui/imgui_draw.cpp.i"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe > CMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui_draw.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\wilma\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\dear-imgui\imgui_draw.cpp
<<
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dear-imgui.dir/bgfx/3rdparty/dear-imgui/imgui_draw.cpp.s"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui_draw.cpp.s /c C:\Users\wilma\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\dear-imgui\imgui_draw.cpp
<<
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui_widgets.cpp.obj: bgfx.cmake\CMakeFiles\dear-imgui.dir\flags.make
bgfx.cmake\CMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui_widgets.cpp.obj: ..\bgfx.cmake\bgfx\3rdparty\dear-imgui\imgui_widgets.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\wilma\Documents\D7049E\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object bgfx.cmake/CMakeFiles/dear-imgui.dir/bgfx/3rdparty/dear-imgui/imgui_widgets.cpp.obj"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui_widgets.cpp.obj /FdCMakeFiles\dear-imgui.dir\dear-imgui.pdb /FS -c C:\Users\wilma\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\dear-imgui\imgui_widgets.cpp
<<
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dear-imgui.dir/bgfx/3rdparty/dear-imgui/imgui_widgets.cpp.i"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe > CMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui_widgets.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\wilma\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\dear-imgui\imgui_widgets.cpp
<<
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug

bgfx.cmake\CMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dear-imgui.dir/bgfx/3rdparty/dear-imgui/imgui_widgets.cpp.s"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui_widgets.cpp.s /c C:\Users\wilma\Documents\D7049E\bgfx.cmake\bgfx\3rdparty\dear-imgui\imgui_widgets.cpp
<<
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug

# Object files for target dear-imgui
dear__imgui_OBJECTS = \
"CMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui.cpp.obj" \
"CMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui_demo.cpp.obj" \
"CMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui_draw.cpp.obj" \
"CMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui_widgets.cpp.obj"

# External object files for target dear-imgui
dear__imgui_EXTERNAL_OBJECTS =

bgfx.cmake\dear-imgui.lib: bgfx.cmake\CMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui.cpp.obj
bgfx.cmake\dear-imgui.lib: bgfx.cmake\CMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui_demo.cpp.obj
bgfx.cmake\dear-imgui.lib: bgfx.cmake\CMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui_draw.cpp.obj
bgfx.cmake\dear-imgui.lib: bgfx.cmake\CMakeFiles\dear-imgui.dir\bgfx\3rdparty\dear-imgui\imgui_widgets.cpp.obj
bgfx.cmake\dear-imgui.lib: bgfx.cmake\CMakeFiles\dear-imgui.dir\build.make
bgfx.cmake\dear-imgui.lib: bgfx.cmake\CMakeFiles\dear-imgui.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\wilma\Documents\D7049E\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library dear-imgui.lib"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake
	$(CMAKE_COMMAND) -P CMakeFiles\dear-imgui.dir\cmake_clean_target.cmake
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\lib.exe /nologo /machine:X86 /out:dear-imgui.lib @CMakeFiles\dear-imgui.dir\objects1.rsp 
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug

# Rule to build all files generated by this target.
bgfx.cmake\CMakeFiles\dear-imgui.dir\build: bgfx.cmake\dear-imgui.lib

.PHONY : bgfx.cmake\CMakeFiles\dear-imgui.dir\build

bgfx.cmake\CMakeFiles\dear-imgui.dir\clean:
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake
	$(CMAKE_COMMAND) -P CMakeFiles\dear-imgui.dir\cmake_clean.cmake
	cd C:\Users\wilma\Documents\D7049E\cmake-build-debug
.PHONY : bgfx.cmake\CMakeFiles\dear-imgui.dir\clean

bgfx.cmake\CMakeFiles\dear-imgui.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\wilma\Documents\D7049E C:\Users\wilma\Documents\D7049E\bgfx.cmake C:\Users\wilma\Documents\D7049E\cmake-build-debug C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake C:\Users\wilma\Documents\D7049E\cmake-build-debug\bgfx.cmake\CMakeFiles\dear-imgui.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : bgfx.cmake\CMakeFiles\dear-imgui.dir\depend

