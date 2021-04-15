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
include bgfx.cmake\CMakeFiles\example-08-update.dir\depend.make

# Include the progress variables for this target.
include bgfx.cmake\CMakeFiles\example-08-update.dir\progress.make

# Include the compile flags for this target's objects.
include bgfx.cmake\CMakeFiles\example-08-update.dir\flags.make

..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\cs_update.bin: ..\bgfx.cmake\bgfx\examples\08-update\cs_update.sc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Compiling shader 08-update/cs_update.sc for DX11, GLSL, "
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/08-update/cs_update.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/dx11/cs_update.bin --platform windows --type compute --profile cs_5_0 -O 1
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/08-update/cs_update.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/glsl/cs_update.bin --platform linux --type compute --profile 430
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\cs_update.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\cs_update.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\cs_update.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_update.bin: ..\bgfx.cmake\bgfx\examples\08-update\fs_update.sc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Compiling shader 08-update/fs_update.sc for DX9, DX11, ESSL, GLSL, SPIRV"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/08-update/fs_update.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/dx9/fs_update.bin --platform windows --type fragment --profile ps_3_0 -O 3
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/08-update/fs_update.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/dx11/fs_update.bin --platform windows --type fragment --profile ps_5_0 -O 3
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/08-update/fs_update.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/essl/fs_update.bin --platform android --type fragment
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/08-update/fs_update.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/glsl/fs_update.bin --platform linux --type fragment --profile 120
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/08-update/fs_update.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/spirv/fs_update.bin --platform linux --type fragment --profile spirv
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\fs_update.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_update.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\fs_update.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\fs_update.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_update.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\fs_update.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\fs_update.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_update.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\fs_update.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\fs_update.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_update.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\fs_update.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_update_3d.bin: ..\bgfx.cmake\bgfx\examples\08-update\fs_update_3d.sc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Compiling shader 08-update/fs_update_3d.sc for DX9, DX11, ESSL, GLSL, SPIRV"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/08-update/fs_update_3d.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/dx9/fs_update_3d.bin --platform windows --type fragment --profile ps_3_0 -O 3
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/08-update/fs_update_3d.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/dx11/fs_update_3d.bin --platform windows --type fragment --profile ps_5_0 -O 3
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/08-update/fs_update_3d.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/essl/fs_update_3d.bin --platform android --type fragment
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/08-update/fs_update_3d.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/glsl/fs_update_3d.bin --platform linux --type fragment --profile 120
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/08-update/fs_update_3d.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/spirv/fs_update_3d.bin --platform linux --type fragment --profile spirv
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\fs_update_3d.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_update_3d.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\fs_update_3d.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\fs_update_3d.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_update_3d.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\fs_update_3d.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\fs_update_3d.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_update_3d.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\fs_update_3d.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\fs_update_3d.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_update_3d.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\fs_update_3d.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_update_cmp.bin: ..\bgfx.cmake\bgfx\examples\08-update\fs_update_cmp.sc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Compiling shader 08-update/fs_update_cmp.sc for DX9, DX11, ESSL, GLSL, SPIRV"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/08-update/fs_update_cmp.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/dx9/fs_update_cmp.bin --platform windows --type fragment --profile ps_3_0 -O 3
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/08-update/fs_update_cmp.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/dx11/fs_update_cmp.bin --platform windows --type fragment --profile ps_5_0 -O 3
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/08-update/fs_update_cmp.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/essl/fs_update_cmp.bin --platform android --type fragment
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/08-update/fs_update_cmp.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/glsl/fs_update_cmp.bin --platform linux --type fragment --profile 120
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/08-update/fs_update_cmp.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/spirv/fs_update_cmp.bin --platform linux --type fragment --profile spirv
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\fs_update_cmp.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_update_cmp.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\fs_update_cmp.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\fs_update_cmp.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_update_cmp.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\fs_update_cmp.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\fs_update_cmp.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_update_cmp.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\fs_update_cmp.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\fs_update_cmp.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_update_cmp.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\fs_update_cmp.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_update.bin: ..\bgfx.cmake\bgfx\examples\08-update\vs_update.sc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Compiling shader 08-update/vs_update.sc for DX9, DX11, ESSL, GLSL, SPIRV"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/08-update/vs_update.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/dx9/vs_update.bin --platform windows --type vertex --profile vs_3_0 -O 3
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/08-update/vs_update.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/dx11/vs_update.bin --platform windows --type vertex --profile vs_5_0 -O 3
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/08-update/vs_update.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/essl/vs_update.bin --platform android --type vertex
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/08-update/vs_update.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/glsl/vs_update.bin --platform linux --type vertex --profile 120
	.\shaderc.exe -f C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/08-update/vs_update.sc -i C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/spirv/vs_update.bin --platform linux --type vertex --profile spirv
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\vs_update.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_update.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\vs_update.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\vs_update.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_update.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\vs_update.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\vs_update.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_update.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\vs_update.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\vs_update.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_update.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\vs_update.bin

bgfx.cmake\CMakeFiles\example-08-update.dir\bgfx\examples\08-update\update.cpp.obj: bgfx.cmake\CMakeFiles\example-08-update.dir\flags.make
bgfx.cmake\CMakeFiles\example-08-update.dir\bgfx\examples\08-update\update.cpp.obj: ..\bgfx.cmake\bgfx\examples\08-update\update.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object bgfx.cmake/CMakeFiles/example-08-update.dir/bgfx/examples/08-update/update.cpp.obj"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\example-08-update.dir\bgfx\examples\08-update\update.cpp.obj /FdCMakeFiles\example-08-update.dir\ /FS -c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\examples\08-update\update.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\example-08-update.dir\bgfx\examples\08-update\update.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example-08-update.dir/bgfx/examples/08-update/update.cpp.i"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\example-08-update.dir\bgfx\examples\08-update\update.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\examples\08-update\update.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\example-08-update.dir\bgfx\examples\08-update\update.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example-08-update.dir/bgfx/examples/08-update/update.cpp.s"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\example-08-update.dir\bgfx\examples\08-update\update.cpp.s /c C:\Users\carol\Documents\D7049E\bgfx.cmake\bgfx\examples\08-update\update.cpp
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

# Object files for target example-08-update
example__08__update_OBJECTS = \
"CMakeFiles\example-08-update.dir\bgfx\examples\08-update\update.cpp.obj"

# External object files for target example-08-update
example__08__update_EXTERNAL_OBJECTS =

bgfx.cmake\example-08-update.exe: bgfx.cmake\CMakeFiles\example-08-update.dir\bgfx\examples\08-update\update.cpp.obj
bgfx.cmake\example-08-update.exe: bgfx.cmake\CMakeFiles\example-08-update.dir\build.make
bgfx.cmake\example-08-update.exe: bgfx.cmake\example-common.lib
bgfx.cmake\example-08-update.exe: bgfx.cmake\bgfx.lib
bgfx.cmake\example-08-update.exe: bgfx.cmake\bimg.lib
bgfx.cmake\example-08-update.exe: bgfx.cmake\astc-codec.lib
bgfx.cmake\example-08-update.exe: bgfx.cmake\astc.lib
bgfx.cmake\example-08-update.exe: bgfx.cmake\edtaa3.lib
bgfx.cmake\example-08-update.exe: bgfx.cmake\etc1.lib
bgfx.cmake\example-08-update.exe: bgfx.cmake\etc2.lib
bgfx.cmake\example-08-update.exe: bgfx.cmake\iqa.lib
bgfx.cmake\example-08-update.exe: bgfx.cmake\squish.lib
bgfx.cmake\example-08-update.exe: bgfx.cmake\nvtt.lib
bgfx.cmake\example-08-update.exe: bgfx.cmake\pvrtc.lib
bgfx.cmake\example-08-update.exe: bgfx.cmake\dear-imgui.lib
bgfx.cmake\example-08-update.exe: bgfx.cmake\bx.lib
bgfx.cmake\example-08-update.exe: bgfx.cmake\meshoptimizer.lib
bgfx.cmake\example-08-update.exe: bgfx.cmake\CMakeFiles\example-08-update.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\carol\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable example-08-update.exe"
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	"C:\Program Files\JetBrains\CLion 2021.1\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\example-08-update.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x86\mt.exe --manifests -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\example-08-update.dir\objects1.rsp @<<
 /out:example-08-update.exe /implib:example-08-update.lib /pdb:C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake\example-08-update.pdb /version:0.0 /machine:X86 /INCREMENTAL:NO /subsystem:windows /ENTRY:"mainCRTStartup"  example-common.lib bgfx.lib bimg.lib astc-codec.lib astc.lib edtaa3.lib etc1.lib etc2.lib iqa.lib squish.lib nvtt.lib pvrtc.lib dear-imgui.lib bx.lib psapi.lib meshoptimizer.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<
	cd C:\Users\carol\Documents\D7049E\cmake-build-release
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	echo >nul && "C:\Program Files\JetBrains\CLion 2021.1\bin\cmake\win\bin\cmake.exe" -E copy_directory C:/Users/carol/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/ C:/Users/carol/Documents/D7049E/cmake-build-release/bgfx.cmake
	cd C:\Users\carol\Documents\D7049E\cmake-build-release

# Rule to build all files generated by this target.
bgfx.cmake\CMakeFiles\example-08-update.dir\build: bgfx.cmake\example-08-update.exe

.PHONY : bgfx.cmake\CMakeFiles\example-08-update.dir\build

bgfx.cmake\CMakeFiles\example-08-update.dir\clean:
	cd C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake
	$(CMAKE_COMMAND) -P CMakeFiles\example-08-update.dir\cmake_clean.cmake
	cd C:\Users\carol\Documents\D7049E\cmake-build-release
.PHONY : bgfx.cmake\CMakeFiles\example-08-update.dir\clean

bgfx.cmake\CMakeFiles\example-08-update.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\cs_update.bin
bgfx.cmake\CMakeFiles\example-08-update.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\fs_update.bin
bgfx.cmake\CMakeFiles\example-08-update.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\fs_update_3d.bin
bgfx.cmake\CMakeFiles\example-08-update.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\fs_update_cmp.bin
bgfx.cmake\CMakeFiles\example-08-update.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\vs_update.bin
bgfx.cmake\CMakeFiles\example-08-update.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_update.bin
bgfx.cmake\CMakeFiles\example-08-update.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_update_3d.bin
bgfx.cmake\CMakeFiles\example-08-update.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_update_cmp.bin
bgfx.cmake\CMakeFiles\example-08-update.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_update.bin
bgfx.cmake\CMakeFiles\example-08-update.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\fs_update.bin
bgfx.cmake\CMakeFiles\example-08-update.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\fs_update_3d.bin
bgfx.cmake\CMakeFiles\example-08-update.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\fs_update_cmp.bin
bgfx.cmake\CMakeFiles\example-08-update.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\vs_update.bin
bgfx.cmake\CMakeFiles\example-08-update.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\cs_update.bin
bgfx.cmake\CMakeFiles\example-08-update.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\fs_update.bin
bgfx.cmake\CMakeFiles\example-08-update.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\fs_update_3d.bin
bgfx.cmake\CMakeFiles\example-08-update.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\fs_update_cmp.bin
bgfx.cmake\CMakeFiles\example-08-update.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\vs_update.bin
bgfx.cmake\CMakeFiles\example-08-update.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\fs_update.bin
bgfx.cmake\CMakeFiles\example-08-update.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\fs_update_3d.bin
bgfx.cmake\CMakeFiles\example-08-update.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\fs_update_cmp.bin
bgfx.cmake\CMakeFiles\example-08-update.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\vs_update.bin
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\carol\Documents\D7049E C:\Users\carol\Documents\D7049E\bgfx.cmake C:\Users\carol\Documents\D7049E\cmake-build-release C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake C:\Users\carol\Documents\D7049E\cmake-build-release\bgfx.cmake\CMakeFiles\example-08-update.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : bgfx.cmake\CMakeFiles\example-08-update.dir\depend

