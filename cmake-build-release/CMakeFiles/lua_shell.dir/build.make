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
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.3.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.3.1\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\X-ray\source\repos\lua_shell

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\X-ray\source\repos\lua_shell\cmake-build-release

# Include any dependencies generated for this target.
include CMakeFiles\lua_shell.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\lua_shell.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\lua_shell.dir\flags.make

CMakeFiles\lua_shell.dir\main.cpp.obj: CMakeFiles\lua_shell.dir\flags.make
CMakeFiles\lua_shell.dir\main.cpp.obj: ..\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\X-ray\source\repos\lua_shell\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/lua_shell.dir/main.cpp.obj"
	C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\lua_shell.dir\main.cpp.obj /FdCMakeFiles\lua_shell.dir\ /FS -c C:\Users\X-ray\source\repos\lua_shell\main.cpp
<<

CMakeFiles\lua_shell.dir\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lua_shell.dir/main.cpp.i"
	C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx64\x64\cl.exe > CMakeFiles\lua_shell.dir\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\X-ray\source\repos\lua_shell\main.cpp
<<

CMakeFiles\lua_shell.dir\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lua_shell.dir/main.cpp.s"
	C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\lua_shell.dir\main.cpp.s /c C:\Users\X-ray\source\repos\lua_shell\main.cpp
<<

# Object files for target lua_shell
lua_shell_OBJECTS = \
"CMakeFiles\lua_shell.dir\main.cpp.obj"

# External object files for target lua_shell
lua_shell_EXTERNAL_OBJECTS =

lua_shell.exe: CMakeFiles\lua_shell.dir\main.cpp.obj
lua_shell.exe: CMakeFiles\lua_shell.dir\build.make
lua_shell.exe: C:\vcpkg\installed\x64-windows\lib\lua.lib
lua_shell.exe: CMakeFiles\lua_shell.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\X-ray\source\repos\lua_shell\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable lua_shell.exe"
	"C:\Program Files\JetBrains\CLion 2020.3.1\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\lua_shell.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x64\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x64\mt.exe --manifests -- C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx64\x64\link.exe /nologo @CMakeFiles\lua_shell.dir\objects1.rsp @<<
 /out:lua_shell.exe /implib:lua_shell.lib /pdb:C:\Users\X-ray\source\repos\lua_shell\cmake-build-release\lua_shell.pdb /version:0.0 /machine:x64 /INCREMENTAL:NO /subsystem:console  C:\vcpkg\installed\x64-windows\lib\lua.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<
	C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -noprofile -executionpolicy Bypass -file C:/vcpkg/scripts/buildsystems/msbuild/applocal.ps1 -targetBinary C:/Users/X-ray/source/repos/lua_shell/cmake-build-release/lua_shell.exe -installedDir C:/vcpkg/installed/x64-windows/bin -OutVariable out

# Rule to build all files generated by this target.
CMakeFiles\lua_shell.dir\build: lua_shell.exe

.PHONY : CMakeFiles\lua_shell.dir\build

CMakeFiles\lua_shell.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\lua_shell.dir\cmake_clean.cmake
.PHONY : CMakeFiles\lua_shell.dir\clean

CMakeFiles\lua_shell.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\X-ray\source\repos\lua_shell C:\Users\X-ray\source\repos\lua_shell C:\Users\X-ray\source\repos\lua_shell\cmake-build-release C:\Users\X-ray\source\repos\lua_shell\cmake-build-release C:\Users\X-ray\source\repos\lua_shell\cmake-build-release\CMakeFiles\lua_shell.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\lua_shell.dir\depend

