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
include bgfx.cmake\CMakeFiles\example-01-cubes.dir\depend.make

# Include the progress variables for this target.
include bgfx.cmake\CMakeFiles\example-01-cubes.dir\progress.make

# Include the compile flags for this target's objects.
include bgfx.cmake\CMakeFiles\example-01-cubes.dir\flags.make

..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_cubes.bin: ..\bgfx.cmake\bgfx\examples\01-cubes\fs_cubes.sc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Compiling shader 01-cubes/fs_cubes.sc for DX9, DX11, ESSL, GLSL, SPIRV"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/01-cubes/fs_cubes.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/dx9/fs_cubes.bin --platform windows --type fragment --profile ps_3_0 -O 3
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/01-cubes/fs_cubes.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/dx11/fs_cubes.bin --platform windows --type fragment --profile ps_5_0 -O 3
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/01-cubes/fs_cubes.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/essl/fs_cubes.bin --platform android --type fragment
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/01-cubes/fs_cubes.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/glsl/fs_cubes.bin --platform linux --type fragment --profile 120
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/01-cubes/fs_cubes.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/spirv/fs_cubes.bin --platform linux --type fragment --profile spirv
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\fs_cubes.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_cubes.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\fs_cubes.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\fs_cubes.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_cubes.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\fs_cubes.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\fs_cubes.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_cubes.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\fs_cubes.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\fs_cubes.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_cubes.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\fs_cubes.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_cubes.bin: ..\bgfx.cmake\bgfx\examples\01-cubes\vs_cubes.sc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Compiling shader 01-cubes/vs_cubes.sc for DX9, DX11, ESSL, GLSL, SPIRV"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/01-cubes/vs_cubes.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/dx9/vs_cubes.bin --platform windows --type vertex --profile vs_3_0 -O 3
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/01-cubes/vs_cubes.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/dx11/vs_cubes.bin --platform windows --type vertex --profile vs_5_0 -O 3
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/01-cubes/vs_cubes.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/essl/vs_cubes.bin --platform android --type vertex
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/01-cubes/vs_cubes.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/glsl/vs_cubes.bin --platform linux --type vertex --profile 120
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/01-cubes/vs_cubes.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/spirv/vs_cubes.bin --platform linux --type vertex --profile spirv
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\vs_cubes.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_cubes.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\vs_cubes.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\vs_cubes.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_cubes.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\vs_cubes.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\vs_cubes.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_cubes.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\vs_cubes.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\vs_cubes.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_cubes.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\vs_cubes.bin

bgfx.cmake\CMakeFiles\example-01-cubes.dir\bgfx\examples\01-cubes\cubes.cpp.obj: bgfx.cmake\CMakeFiles\example-01-cubes.dir\flags.make
bgfx.cmake\CMakeFiles\example-01-cubes.dir\bgfx\examples\01-cubes\cubes.cpp.obj: ..\bgfx.cmake\bgfx\examples\01-cubes\cubes.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object bgfx.cmake/CMakeFiles/example-01-cubes.dir/bgfx/examples/01-cubes/cubes.cpp.obj"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\example-01-cubes.dir\bgfx\examples\01-cubes\cubes.cpp.obj /FdCMakeFiles\example-01-cubes.dir\ /FS -c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\examples\01-cubes\cubes.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\example-01-cubes.dir\bgfx\examples\01-cubes\cubes.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example-01-cubes.dir/bgfx/examples/01-cubes/cubes.cpp.i"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\example-01-cubes.dir\bgfx\examples\01-cubes\cubes.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\examples\01-cubes\cubes.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\example-01-cubes.dir\bgfx\examples\01-cubes\cubes.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example-01-cubes.dir/bgfx/examples/01-cubes/cubes.cpp.s"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\example-01-cubes.dir\bgfx\examples\01-cubes\cubes.cpp.s /c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\examples\01-cubes\cubes.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

# Object files for target example-01-cubes
example__01__cubes_OBJECTS = \
"CMakeFiles\example-01-cubes.dir\bgfx\examples\01-cubes\cubes.cpp.obj"

# External object files for target example-01-cubes
example__01__cubes_EXTERNAL_OBJECTS =

bgfx.cmake\example-01-cubes.exe: bgfx.cmake\CMakeFiles\example-01-cubes.dir\bgfx\examples\01-cubes\cubes.cpp.obj
bgfx.cmake\example-01-cubes.exe: bgfx.cmake\CMakeFiles\example-01-cubes.dir\build.make
bgfx.cmake\example-01-cubes.exe: bgfx.cmake\example-common.lib
bgfx.cmake\example-01-cubes.exe: bgfx.cmake\bgfx.lib
bgfx.cmake\example-01-cubes.exe: bgfx.cmake\bimg.lib
bgfx.cmake\example-01-cubes.exe: bgfx.cmake\astc-codec.lib
bgfx.cmake\example-01-cubes.exe: bgfx.cmake\astc.lib
bgfx.cmake\example-01-cubes.exe: bgfx.cmake\edtaa3.lib
bgfx.cmake\example-01-cubes.exe: bgfx.cmake\etc1.lib
bgfx.cmake\example-01-cubes.exe: bgfx.cmake\etc2.lib
bgfx.cmake\example-01-cubes.exe: bgfx.cmake\iqa.lib
bgfx.cmake\example-01-cubes.exe: bgfx.cmake\squish.lib
bgfx.cmake\example-01-cubes.exe: bgfx.cmake\nvtt.lib
bgfx.cmake\example-01-cubes.exe: bgfx.cmake\pvrtc.lib
bgfx.cmake\example-01-cubes.exe: bgfx.cmake\dear-imgui.lib
bgfx.cmake\example-01-cubes.exe: bgfx.cmake\bx.lib
bgfx.cmake\example-01-cubes.exe: bgfx.cmake\meshoptimizer.lib
bgfx.cmake\example-01-cubes.exe: bgfx.cmake\CMakeFiles\example-01-cubes.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable example-01-cubes.exe"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	"C:\Program Files\JetBrains\CLion 2021.1\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\example-01-cubes.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x86\mt.exe --manifests -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\example-01-cubes.dir\objects1.rsp @<<
 /out:example-01-cubes.exe /implib:example-01-cubes.lib /pdb:C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake\example-01-cubes.pdb /version:0.0 /machine:X86 /INCREMENTAL:NO /subsystem:windows /ENTRY:"mainCRTStartup"  example-common.lib bgfx.lib bimg.lib astc-codec.lib astc.lib edtaa3.lib etc1.lib etc2.lib iqa.lib squish.lib nvtt.lib pvrtc.lib dear-imgui.lib bx.lib psapi.lib meshoptimizer.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	echo >nul && "C:\Program Files\JetBrains\CLion 2021.1\bin\cmake\win\bin\cmake.exe" -E copy_directory C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/ C:/Users/carol/Documents/D7049E/cmake-build-release/bgfx.cmake
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

# Rule to build all files generated by this target.
bgfx.cmake\CMakeFiles\example-01-cubes.dir\build: bgfx.cmake\example-01-cubes.exe

.PHONY : bgfx.cmake\CMakeFiles\example-01-cubes.dir\build

bgfx.cmake\CMakeFiles\example-01-cubes.dir\clean:
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	$(CMAKE_COMMAND) -P CMakeFiles\example-01-cubes.dir\cmake_clean.cmake
	cd C:\Users\carol\Documents\D7049E\cmake-build-release
.PHONY : bgfx.cmake\CMakeFiles\example-01-cubes.dir\clean

bgfx.cmake\CMakeFiles\example-01-cubes.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\fs_cubes.bin
bgfx.cmake\CMakeFiles\example-01-cubes.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\vs_cubes.bin
bgfx.cmake\CMakeFiles\example-01-cubes.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_cubes.bin
bgfx.cmake\CMakeFiles\example-01-cubes.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_cubes.bin
bgfx.cmake\CMakeFiles\example-01-cubes.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\fs_cubes.bin
bgfx.cmake\CMakeFiles\example-01-cubes.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\vs_cubes.bin
bgfx.cmake\CMakeFiles\example-01-cubes.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\fs_cubes.bin
bgfx.cmake\CMakeFiles\example-01-cubes.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\vs_cubes.bin
bgfx.cmake\CMakeFiles\example-01-cubes.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\fs_cubes.bin
bgfx.cmake\CMakeFiles\example-01-cubes.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\vs_cubes.bin
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\carol\Documents\D7049E C:\Users\carol\Documents\D7049E\bgfx.cmake C:\Users\carol\Documents\D7049E\cmake-build-release C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake\CMakeFiles\example-01-cubes.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : bgfx.cmake\CMakeFiles\example-01-cubes.dir\depend

