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

# Include any dependencies generated for this target.
include bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend.make

# Include the progress variables for this target.
include bgfx.cmake\CMakeFiles\example-31-rsm.dir\progress.make

# Include the compile flags for this target's objects.
include bgfx.cmake\CMakeFiles\example-31-rsm.dir\flags.make

..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_rsm_combine.bin: ..\bgfx.cmake\bgfx\examples\31-rsm\fs_rsm_combine.sc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\wilma\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Compiling shader 31-rsm/fs_rsm_combine.sc for DX9, DX11, ESSL, GLSL, SPIRV"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-release\bgfx.cmake
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/fs_rsm_combine.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/dx9/fs_rsm_combine.bin --platform windows --type fragment --profile ps_3_0 -O 3
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/fs_rsm_combine.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/dx11/fs_rsm_combine.bin --platform windows --type fragment --profile ps_5_0 -O 3
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/fs_rsm_combine.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/essl/fs_rsm_combine.bin --platform android --type fragment
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/fs_rsm_combine.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/glsl/fs_rsm_combine.bin --platform linux --type fragment --profile 120
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/fs_rsm_combine.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/spirv/fs_rsm_combine.bin --platform linux --type fragment --profile spirv
	cd C:\Users\wilma\Documents\D7049E\cmake-build-release

..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\fs_rsm_combine.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_rsm_combine.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\fs_rsm_combine.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\fs_rsm_combine.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_rsm_combine.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\fs_rsm_combine.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\fs_rsm_combine.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_rsm_combine.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\fs_rsm_combine.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\fs_rsm_combine.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_rsm_combine.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\fs_rsm_combine.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_rsm_gbuffer.bin: ..\bgfx.cmake\bgfx\examples\31-rsm\fs_rsm_gbuffer.sc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\wilma\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Compiling shader 31-rsm/fs_rsm_gbuffer.sc for DX9, DX11, ESSL, GLSL, SPIRV"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-release\bgfx.cmake
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/fs_rsm_gbuffer.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/dx9/fs_rsm_gbuffer.bin --platform windows --type fragment --profile ps_3_0 -O 3
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/fs_rsm_gbuffer.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/dx11/fs_rsm_gbuffer.bin --platform windows --type fragment --profile ps_5_0 -O 3
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/fs_rsm_gbuffer.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/essl/fs_rsm_gbuffer.bin --platform android --type fragment
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/fs_rsm_gbuffer.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/glsl/fs_rsm_gbuffer.bin --platform linux --type fragment --profile 120
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/fs_rsm_gbuffer.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/spirv/fs_rsm_gbuffer.bin --platform linux --type fragment --profile spirv
	cd C:\Users\wilma\Documents\D7049E\cmake-build-release

..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\fs_rsm_gbuffer.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_rsm_gbuffer.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\fs_rsm_gbuffer.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\fs_rsm_gbuffer.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_rsm_gbuffer.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\fs_rsm_gbuffer.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\fs_rsm_gbuffer.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_rsm_gbuffer.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\fs_rsm_gbuffer.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\fs_rsm_gbuffer.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_rsm_gbuffer.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\fs_rsm_gbuffer.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_rsm_lbuffer.bin: ..\bgfx.cmake\bgfx\examples\31-rsm\fs_rsm_lbuffer.sc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\wilma\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Compiling shader 31-rsm/fs_rsm_lbuffer.sc for DX9, DX11, ESSL, GLSL, SPIRV"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-release\bgfx.cmake
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/fs_rsm_lbuffer.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/dx9/fs_rsm_lbuffer.bin --platform windows --type fragment --profile ps_3_0 -O 3
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/fs_rsm_lbuffer.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/dx11/fs_rsm_lbuffer.bin --platform windows --type fragment --profile ps_5_0 -O 3
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/fs_rsm_lbuffer.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/essl/fs_rsm_lbuffer.bin --platform android --type fragment
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/fs_rsm_lbuffer.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/glsl/fs_rsm_lbuffer.bin --platform linux --type fragment --profile 120
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/fs_rsm_lbuffer.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/spirv/fs_rsm_lbuffer.bin --platform linux --type fragment --profile spirv
	cd C:\Users\wilma\Documents\D7049E\cmake-build-release

..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\fs_rsm_lbuffer.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_rsm_lbuffer.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\fs_rsm_lbuffer.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\fs_rsm_lbuffer.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_rsm_lbuffer.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\fs_rsm_lbuffer.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\fs_rsm_lbuffer.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_rsm_lbuffer.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\fs_rsm_lbuffer.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\fs_rsm_lbuffer.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_rsm_lbuffer.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\fs_rsm_lbuffer.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_rsm_shadow.bin: ..\bgfx.cmake\bgfx\examples\31-rsm\fs_rsm_shadow.sc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\wilma\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Compiling shader 31-rsm/fs_rsm_shadow.sc for DX9, DX11, ESSL, GLSL, SPIRV"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-release\bgfx.cmake
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/fs_rsm_shadow.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/dx9/fs_rsm_shadow.bin --platform windows --type fragment --profile ps_3_0 -O 3
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/fs_rsm_shadow.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/dx11/fs_rsm_shadow.bin --platform windows --type fragment --profile ps_5_0 -O 3
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/fs_rsm_shadow.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/essl/fs_rsm_shadow.bin --platform android --type fragment
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/fs_rsm_shadow.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/glsl/fs_rsm_shadow.bin --platform linux --type fragment --profile 120
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/fs_rsm_shadow.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/spirv/fs_rsm_shadow.bin --platform linux --type fragment --profile spirv
	cd C:\Users\wilma\Documents\D7049E\cmake-build-release

..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\fs_rsm_shadow.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_rsm_shadow.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\fs_rsm_shadow.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\fs_rsm_shadow.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_rsm_shadow.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\fs_rsm_shadow.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\fs_rsm_shadow.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_rsm_shadow.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\fs_rsm_shadow.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\fs_rsm_shadow.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_rsm_shadow.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\fs_rsm_shadow.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_rsm_combine.bin: ..\bgfx.cmake\bgfx\examples\31-rsm\vs_rsm_combine.sc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\wilma\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Compiling shader 31-rsm/vs_rsm_combine.sc for DX9, DX11, ESSL, GLSL, SPIRV"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-release\bgfx.cmake
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/vs_rsm_combine.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/dx9/vs_rsm_combine.bin --platform windows --type vertex --profile vs_3_0 -O 3
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/vs_rsm_combine.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/dx11/vs_rsm_combine.bin --platform windows --type vertex --profile vs_5_0 -O 3
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/vs_rsm_combine.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/essl/vs_rsm_combine.bin --platform android --type vertex
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/vs_rsm_combine.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/glsl/vs_rsm_combine.bin --platform linux --type vertex --profile 120
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/vs_rsm_combine.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/spirv/vs_rsm_combine.bin --platform linux --type vertex --profile spirv
	cd C:\Users\wilma\Documents\D7049E\cmake-build-release

..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\vs_rsm_combine.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_rsm_combine.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\vs_rsm_combine.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\vs_rsm_combine.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_rsm_combine.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\vs_rsm_combine.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\vs_rsm_combine.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_rsm_combine.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\vs_rsm_combine.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\vs_rsm_combine.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_rsm_combine.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\vs_rsm_combine.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_rsm_gbuffer.bin: ..\bgfx.cmake\bgfx\examples\31-rsm\vs_rsm_gbuffer.sc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\wilma\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Compiling shader 31-rsm/vs_rsm_gbuffer.sc for DX9, DX11, ESSL, GLSL, SPIRV"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-release\bgfx.cmake
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/vs_rsm_gbuffer.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/dx9/vs_rsm_gbuffer.bin --platform windows --type vertex --profile vs_3_0 -O 3
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/vs_rsm_gbuffer.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/dx11/vs_rsm_gbuffer.bin --platform windows --type vertex --profile vs_5_0 -O 3
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/vs_rsm_gbuffer.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/essl/vs_rsm_gbuffer.bin --platform android --type vertex
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/vs_rsm_gbuffer.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/glsl/vs_rsm_gbuffer.bin --platform linux --type vertex --profile 120
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/vs_rsm_gbuffer.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/spirv/vs_rsm_gbuffer.bin --platform linux --type vertex --profile spirv
	cd C:\Users\wilma\Documents\D7049E\cmake-build-release

..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\vs_rsm_gbuffer.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_rsm_gbuffer.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\vs_rsm_gbuffer.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\vs_rsm_gbuffer.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_rsm_gbuffer.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\vs_rsm_gbuffer.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\vs_rsm_gbuffer.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_rsm_gbuffer.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\vs_rsm_gbuffer.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\vs_rsm_gbuffer.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_rsm_gbuffer.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\vs_rsm_gbuffer.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_rsm_lbuffer.bin: ..\bgfx.cmake\bgfx\examples\31-rsm\vs_rsm_lbuffer.sc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\wilma\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Compiling shader 31-rsm/vs_rsm_lbuffer.sc for DX9, DX11, ESSL, GLSL, SPIRV"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-release\bgfx.cmake
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/vs_rsm_lbuffer.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/dx9/vs_rsm_lbuffer.bin --platform windows --type vertex --profile vs_3_0 -O 3
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/vs_rsm_lbuffer.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/dx11/vs_rsm_lbuffer.bin --platform windows --type vertex --profile vs_5_0 -O 3
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/vs_rsm_lbuffer.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/essl/vs_rsm_lbuffer.bin --platform android --type vertex
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/vs_rsm_lbuffer.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/glsl/vs_rsm_lbuffer.bin --platform linux --type vertex --profile 120
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/vs_rsm_lbuffer.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/spirv/vs_rsm_lbuffer.bin --platform linux --type vertex --profile spirv
	cd C:\Users\wilma\Documents\D7049E\cmake-build-release

..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\vs_rsm_lbuffer.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_rsm_lbuffer.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\vs_rsm_lbuffer.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\vs_rsm_lbuffer.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_rsm_lbuffer.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\vs_rsm_lbuffer.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\vs_rsm_lbuffer.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_rsm_lbuffer.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\vs_rsm_lbuffer.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\vs_rsm_lbuffer.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_rsm_lbuffer.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\vs_rsm_lbuffer.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_rsm_shadow.bin: ..\bgfx.cmake\bgfx\examples\31-rsm\vs_rsm_shadow.sc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\wilma\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Compiling shader 31-rsm/vs_rsm_shadow.sc for DX9, DX11, ESSL, GLSL, SPIRV"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-release\bgfx.cmake
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/vs_rsm_shadow.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/dx9/vs_rsm_shadow.bin --platform windows --type vertex --profile vs_3_0 -O 3
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/vs_rsm_shadow.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/dx11/vs_rsm_shadow.bin --platform windows --type vertex --profile vs_5_0 -O 3
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/vs_rsm_shadow.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/essl/vs_rsm_shadow.bin --platform android --type vertex
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/vs_rsm_shadow.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/glsl/vs_rsm_shadow.bin --platform linux --type vertex --profile 120
	.\shaderc.exe -f C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/31-rsm/vs_rsm_shadow.sc -i C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/src -o C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/shaders/spirv/vs_rsm_shadow.bin --platform linux --type vertex --profile spirv
	cd C:\Users\wilma\Documents\D7049E\cmake-build-release

..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\vs_rsm_shadow.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_rsm_shadow.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\vs_rsm_shadow.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\vs_rsm_shadow.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_rsm_shadow.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\vs_rsm_shadow.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\vs_rsm_shadow.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_rsm_shadow.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\vs_rsm_shadow.bin

..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\vs_rsm_shadow.bin: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_rsm_shadow.bin
	@$(CMAKE_COMMAND) -E touch_nocreate ..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\vs_rsm_shadow.bin

bgfx.cmake\CMakeFiles\example-31-rsm.dir\bgfx\examples\31-rsm\reflectiveshadowmap.cpp.obj: bgfx.cmake\CMakeFiles\example-31-rsm.dir\flags.make
bgfx.cmake\CMakeFiles\example-31-rsm.dir\bgfx\examples\31-rsm\reflectiveshadowmap.cpp.obj: ..\bgfx.cmake\bgfx\examples\31-rsm\reflectiveshadowmap.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\wilma\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object bgfx.cmake/CMakeFiles/example-31-rsm.dir/bgfx/examples/31-rsm/reflectiveshadowmap.cpp.obj"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\example-31-rsm.dir\bgfx\examples\31-rsm\reflectiveshadowmap.cpp.obj /FdCMakeFiles\example-31-rsm.dir\ /FS -c C:\Users\wilma\Documents\D7049E\bgfx.cmake\bgfx\examples\31-rsm\reflectiveshadowmap.cpp
<<
	cd C:\Users\wilma\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\example-31-rsm.dir\bgfx\examples\31-rsm\reflectiveshadowmap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example-31-rsm.dir/bgfx/examples/31-rsm/reflectiveshadowmap.cpp.i"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe > CMakeFiles\example-31-rsm.dir\bgfx\examples\31-rsm\reflectiveshadowmap.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\wilma\Documents\D7049E\bgfx.cmake\bgfx\examples\31-rsm\reflectiveshadowmap.cpp
<<
	cd C:\Users\wilma\Documents\D7049E\cmake-build-release

bgfx.cmake\CMakeFiles\example-31-rsm.dir\bgfx\examples\31-rsm\reflectiveshadowmap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example-31-rsm.dir/bgfx/examples/31-rsm/reflectiveshadowmap.cpp.s"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-release\bgfx.cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\example-31-rsm.dir\bgfx\examples\31-rsm\reflectiveshadowmap.cpp.s /c C:\Users\wilma\Documents\D7049E\bgfx.cmake\bgfx\examples\31-rsm\reflectiveshadowmap.cpp
<<
	cd C:\Users\wilma\Documents\D7049E\cmake-build-release

# Object files for target example-31-rsm
example__31__rsm_OBJECTS = \
"CMakeFiles\example-31-rsm.dir\bgfx\examples\31-rsm\reflectiveshadowmap.cpp.obj"

# External object files for target example-31-rsm
example__31__rsm_EXTERNAL_OBJECTS =

bgfx.cmake\example-31-rsm.exe: bgfx.cmake\CMakeFiles\example-31-rsm.dir\bgfx\examples\31-rsm\reflectiveshadowmap.cpp.obj
bgfx.cmake\example-31-rsm.exe: bgfx.cmake\CMakeFiles\example-31-rsm.dir\build.make
bgfx.cmake\example-31-rsm.exe: bgfx.cmake\example-common.lib
bgfx.cmake\example-31-rsm.exe: bgfx.cmake\bgfx.lib
bgfx.cmake\example-31-rsm.exe: bgfx.cmake\bimg.lib
bgfx.cmake\example-31-rsm.exe: bgfx.cmake\astc-codec.lib
bgfx.cmake\example-31-rsm.exe: bgfx.cmake\astc.lib
bgfx.cmake\example-31-rsm.exe: bgfx.cmake\edtaa3.lib
bgfx.cmake\example-31-rsm.exe: bgfx.cmake\etc1.lib
bgfx.cmake\example-31-rsm.exe: bgfx.cmake\etc2.lib
bgfx.cmake\example-31-rsm.exe: bgfx.cmake\iqa.lib
bgfx.cmake\example-31-rsm.exe: bgfx.cmake\squish.lib
bgfx.cmake\example-31-rsm.exe: bgfx.cmake\nvtt.lib
bgfx.cmake\example-31-rsm.exe: bgfx.cmake\pvrtc.lib
bgfx.cmake\example-31-rsm.exe: bgfx.cmake\dear-imgui.lib
bgfx.cmake\example-31-rsm.exe: bgfx.cmake\bx.lib
bgfx.cmake\example-31-rsm.exe: bgfx.cmake\meshoptimizer.lib
bgfx.cmake\example-31-rsm.exe: bgfx.cmake\CMakeFiles\example-31-rsm.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\wilma\Documents\D7049E\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable example-31-rsm.exe"
	cd C:\Users\wilma\Documents\D7049E\cmake-build-release\bgfx.cmake
	"C:\Program Files\JetBrains\CLion 2021.1\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\example-31-rsm.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\mt.exe --manifests -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\example-31-rsm.dir\objects1.rsp @<<
 /out:example-31-rsm.exe /implib:example-31-rsm.lib /pdb:C:\Users\wilma\Documents\D7049E\cmake-build-release\bgfx.cmake\example-31-rsm.pdb /version:0.0 /machine:X86 /INCREMENTAL:NO /subsystem:windows /ENTRY:"mainCRTStartup"  example-common.lib bgfx.lib bimg.lib astc-codec.lib astc.lib edtaa3.lib etc1.lib etc2.lib iqa.lib squish.lib nvtt.lib pvrtc.lib dear-imgui.lib bx.lib psapi.lib meshoptimizer.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<
	cd C:\Users\wilma\Documents\D7049E\cmake-build-release
	cd C:\Users\wilma\Documents\D7049E\cmake-build-release\bgfx.cmake
	echo >nul && "C:\Program Files\JetBrains\CLion 2021.1\bin\cmake\win\bin\cmake.exe" -E copy_directory C:/Users/wilma/Documents/D7049E/bgfx.cmake/bgfx/examples/runtime/ C:/Users/wilma/Documents/D7049E/cmake-build-release/bgfx.cmake
	cd C:\Users\wilma\Documents\D7049E\cmake-build-release

# Rule to build all files generated by this target.
bgfx.cmake\CMakeFiles\example-31-rsm.dir\build: bgfx.cmake\example-31-rsm.exe

.PHONY : bgfx.cmake\CMakeFiles\example-31-rsm.dir\build

bgfx.cmake\CMakeFiles\example-31-rsm.dir\clean:
	cd C:\Users\wilma\Documents\D7049E\cmake-build-release\bgfx.cmake
	$(CMAKE_COMMAND) -P CMakeFiles\example-31-rsm.dir\cmake_clean.cmake
	cd C:\Users\wilma\Documents\D7049E\cmake-build-release
.PHONY : bgfx.cmake\CMakeFiles\example-31-rsm.dir\clean

bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\fs_rsm_combine.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\fs_rsm_gbuffer.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\fs_rsm_lbuffer.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\fs_rsm_shadow.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\vs_rsm_combine.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\vs_rsm_gbuffer.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\vs_rsm_lbuffer.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx11\vs_rsm_shadow.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_rsm_combine.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_rsm_gbuffer.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_rsm_lbuffer.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\fs_rsm_shadow.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_rsm_combine.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_rsm_gbuffer.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_rsm_lbuffer.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\dx9\vs_rsm_shadow.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\fs_rsm_combine.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\fs_rsm_gbuffer.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\fs_rsm_lbuffer.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\fs_rsm_shadow.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\vs_rsm_combine.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\vs_rsm_gbuffer.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\vs_rsm_lbuffer.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\essl\vs_rsm_shadow.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\fs_rsm_combine.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\fs_rsm_gbuffer.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\fs_rsm_lbuffer.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\fs_rsm_shadow.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\vs_rsm_combine.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\vs_rsm_gbuffer.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\vs_rsm_lbuffer.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\glsl\vs_rsm_shadow.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\fs_rsm_combine.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\fs_rsm_gbuffer.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\fs_rsm_lbuffer.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\fs_rsm_shadow.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\vs_rsm_combine.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\vs_rsm_gbuffer.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\vs_rsm_lbuffer.bin
bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend: ..\bgfx.cmake\bgfx\examples\runtime\shaders\spirv\vs_rsm_shadow.bin
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\wilma\Documents\D7049E C:\Users\wilma\Documents\D7049E\bgfx.cmake C:\Users\wilma\Documents\D7049E\cmake-build-release C:\Users\wilma\Documents\D7049E\cmake-build-release\bgfx.cmake C:\Users\wilma\Documents\D7049E\cmake-build-release\bgfx.cmake\CMakeFiles\example-31-rsm.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : bgfx.cmake\CMakeFiles\example-31-rsm.dir\depend
