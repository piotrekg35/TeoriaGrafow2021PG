# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/student/Pulpit/tgproject/TeoriaGrafow2021PG

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/student/Pulpit/tgproject/TeoriaGrafow2021PG/build

# Include any dependencies generated for this target.
include src/CMakeFiles/grafy.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/grafy.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/grafy.dir/flags.make

src/CMakeFiles/grafy.dir/main.cpp.o: src/CMakeFiles/grafy.dir/flags.make
src/CMakeFiles/grafy.dir/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/student/Pulpit/tgproject/TeoriaGrafow2021PG/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/grafy.dir/main.cpp.o"
	cd /home/student/Pulpit/tgproject/TeoriaGrafow2021PG/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/grafy.dir/main.cpp.o -c /home/student/Pulpit/tgproject/TeoriaGrafow2021PG/src/main.cpp

src/CMakeFiles/grafy.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/grafy.dir/main.cpp.i"
	cd /home/student/Pulpit/tgproject/TeoriaGrafow2021PG/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/student/Pulpit/tgproject/TeoriaGrafow2021PG/src/main.cpp > CMakeFiles/grafy.dir/main.cpp.i

src/CMakeFiles/grafy.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/grafy.dir/main.cpp.s"
	cd /home/student/Pulpit/tgproject/TeoriaGrafow2021PG/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/student/Pulpit/tgproject/TeoriaGrafow2021PG/src/main.cpp -o CMakeFiles/grafy.dir/main.cpp.s

# Object files for target grafy
grafy_OBJECTS = \
"CMakeFiles/grafy.dir/main.cpp.o"

# External object files for target grafy
grafy_EXTERNAL_OBJECTS =

src/grafy: src/CMakeFiles/grafy.dir/main.cpp.o
src/grafy: src/CMakeFiles/grafy.dir/build.make
src/grafy: src/CMakeFiles/grafy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/student/Pulpit/tgproject/TeoriaGrafow2021PG/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable grafy"
	cd /home/student/Pulpit/tgproject/TeoriaGrafow2021PG/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/grafy.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/grafy.dir/build: src/grafy

.PHONY : src/CMakeFiles/grafy.dir/build

src/CMakeFiles/grafy.dir/clean:
	cd /home/student/Pulpit/tgproject/TeoriaGrafow2021PG/build/src && $(CMAKE_COMMAND) -P CMakeFiles/grafy.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/grafy.dir/clean

src/CMakeFiles/grafy.dir/depend:
	cd /home/student/Pulpit/tgproject/TeoriaGrafow2021PG/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/student/Pulpit/tgproject/TeoriaGrafow2021PG /home/student/Pulpit/tgproject/TeoriaGrafow2021PG/src /home/student/Pulpit/tgproject/TeoriaGrafow2021PG/build /home/student/Pulpit/tgproject/TeoriaGrafow2021PG/build/src /home/student/Pulpit/tgproject/TeoriaGrafow2021PG/build/src/CMakeFiles/grafy.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/grafy.dir/depend
