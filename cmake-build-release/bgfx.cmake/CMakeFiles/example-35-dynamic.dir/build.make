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
include bgfx.cmake\CMakeFiles\example-35-dynamic.dir\depend.make

# Include the progress variables for this target.
include bgfx.cmake\CMakeFiles\example-35-dynamic.dir\progress.make

# Include the compile flags for this target's objects.
include bgfx.cmake\CMakeFiles\example-35-dynamic.dir\flags.make

bgfx.cmake\CMakeFiles\example-35-dynamic.dir\bgfx\examples\35-dynamic\dynamic.cpp.obj: bgfx.cmake\CMakeFiles\example-35-dynamic.dir\flags.make
bgfx.cmake\CMakeFiles\example-35-dynamic.dir\bgfx\examples\35-dynamic\dynamic.cpp.obj: ..\bgfx.cmake\bgfx\examples\35-dynamic\dynamic.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object bgfx.cmake/CMakeFiles/example-35-dynamic.dir/bgfx/examples/35-dynamic/dynamic.cpp.obj"
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~4\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\example-35-dynamic.dir\bgfx\examples\35-dynamic\dynamic.cpp.obj /FdCMakeFiles\example-35-dynamic.dir\ /FS -c C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\bgfx.cmake\bgfx\examples\35-dynamic\dynamic.cpp
<<
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\example-35-dynamic.dir\bgfx\examples\35-dynamic\dynamic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example-35-dynamic.dir/bgfx/examples/35-dynamic/dynamic.cpp.i"
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~4\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\example-35-dynamic.dir\bgfx\examples\35-dynamic\dynamic.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\bgfx.cmake\bgfx\examples\35-dynamic\dynamic.cpp
<<
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\example-35-dynamic.dir\bgfx\examples\35-dynamic\dynamic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example-35-dynamic.dir/bgfx/examples/35-dynamic/dynamic.cpp.s"
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~4\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\example-35-dynamic.dir\bgfx\examples\35-dynamic\dynamic.cpp.s /c C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\bgfx.cmake\bgfx\examples\35-dynamic\dynamic.cpp
<<
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-release

# Object files for target example-35-dynamic
example__35__dynamic_OBJECTS = \
"CMakeFiles\example-35-dynamic.dir\bgfx\examples\35-dynamic\dynamic.cpp.obj"

# External object files for target example-35-dynamic
example__35__dynamic_EXTERNAL_OBJECTS =

bgfx.cmake\example-35-dynamic.exe: bgfx.cmake\CMakeFiles\example-35-dynamic.dir\bgfx\examples\35-dynamic\dynamic.cpp.obj
bgfx.cmake\example-35-dynamic.exe: bgfx.cmake\CMakeFiles\example-35-dynamic.dir\build.make
bgfx.cmake\example-35-dynamic.exe: bgfx.cmake\example-common.lib
bgfx.cmake\example-35-dynamic.exe: bgfx.cmake\bgfx.lib
bgfx.cmake\example-35-dynamic.exe: bgfx.cmake\bimg.lib
bgfx.cmake\example-35-dynamic.exe: bgfx.cmake\astc-codec.lib
bgfx.cmake\example-35-dynamic.exe: bgfx.cmake\astc.lib
bgfx.cmake\example-35-dynamic.exe: bgfx.cmake\edtaa3.lib
bgfx.cmake\example-35-dynamic.exe: bgfx.cmake\etc1.lib
bgfx.cmake\example-35-dynamic.exe: bgfx.cmake\etc2.lib
bgfx.cmake\example-35-dynamic.exe: bgfx.cmake\iqa.lib
bgfx.cmake\example-35-dynamic.exe: bgfx.cmake\squish.lib
bgfx.cmake\example-35-dynamic.exe: bgfx.cmake\nvtt.lib
bgfx.cmake\example-35-dynamic.exe: bgfx.cmake\pvrtc.lib
bgfx.cmake\example-35-dynamic.exe: bgfx.cmake\dear-imgui.lib
bgfx.cmake\example-35-dynamic.exe: bgfx.cmake\bx.lib
bgfx.cmake\example-35-dynamic.exe: bgfx.cmake\meshoptimizer.lib
bgfx.cmake\example-35-dynamic.exe: bgfx.cmake\CMakeFiles\example-35-dynamic.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable example-35-dynamic.exe"
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-release\bgfx.cmake
	"C:\Program Files\JetBrains\CLion 2021.1\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\example-35-dynamic.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x86\mt.exe --manifests -- C:\PROGRA~2\MICROS~4\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\example-35-dynamic.dir\objects1.rsp @<<
 /out:example-35-dynamic.exe /implib:example-35-dynamic.lib /pdb:C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-release\bgfx.cmake\example-35-dynamic.pdb /version:0.0 /machine:X86 /INCREMENTAL:NO /subsystem:windows /ENTRY:"mainCRTStartup"  example-common.lib bgfx.lib bimg.lib astc-codec.lib astc.lib edtaa3.lib etc1.lib etc2.lib iqa.lib squish.lib nvtt.lib pvrtc.lib dear-imgui.lib bx.lib psapi.lib meshoptimizer.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-release
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-release\bgfx.cmake
	echo >nul && "C:\Program Files\JetBrains\CLion 2021.1\bin\cmake\win\bin\cmake.exe" -E copy_directory C:/Users/andre/OneDrive/Skrivbord/GameEngine/D7049E/bgfx.cmake/bgfx/examples/runtime/ C:/Users/andre/OneDrive/Skrivbord/GameEngine/D7049E/cmake-build-release/bgfx.cmake
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-release

# Rule to build all files generated by this target.
bgfx.cmake\CMakeFiles\example-35-dynamic.dir\build: bgfx.cmake\example-35-dynamic.exe

.PHONY : bgfx.cmake\CMakeFiles\example-35-dynamic.dir\build

bgfx.cmake\CMakeFiles\example-35-dynamic.dir\clean:
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-release\bgfx.cmake
	$(CMAKE_COMMAND) -P CMakeFiles\example-35-dynamic.dir\cmake_clean.cmake
	cd C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-release
.PHONY : bgfx.cmake\CMakeFiles\example-35-dynamic.dir\clean

bgfx.cmake\CMakeFiles\example-35-dynamic.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\bgfx.cmake C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-release C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-release\bgfx.cmake C:\Users\andre\OneDrive\Skrivbord\GameEngine\D7049E\cmake-build-release\bgfx.cmake\CMakeFiles\example-35-dynamic.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : bgfx.cmake\CMakeFiles\example-35-dynamic.dir\depend

