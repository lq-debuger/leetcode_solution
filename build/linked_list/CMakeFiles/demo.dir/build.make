# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/kerwin/code/leetcode_solution

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kerwin/code/leetcode_solution/build

# Include any dependencies generated for this target.
include linked_list/CMakeFiles/demo.dir/depend.make

# Include the progress variables for this target.
include linked_list/CMakeFiles/demo.dir/progress.make

# Include the compile flags for this target's objects.
include linked_list/CMakeFiles/demo.dir/flags.make

linked_list/CMakeFiles/demo.dir/_21.cc.o: linked_list/CMakeFiles/demo.dir/flags.make
linked_list/CMakeFiles/demo.dir/_21.cc.o: ../linked_list/_21.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kerwin/code/leetcode_solution/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object linked_list/CMakeFiles/demo.dir/_21.cc.o"
	cd /home/kerwin/code/leetcode_solution/build/linked_list && /usr/bin/x86_64-linux-gnu-g++-5   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/demo.dir/_21.cc.o -c /home/kerwin/code/leetcode_solution/linked_list/_21.cc

linked_list/CMakeFiles/demo.dir/_21.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo.dir/_21.cc.i"
	cd /home/kerwin/code/leetcode_solution/build/linked_list && /usr/bin/x86_64-linux-gnu-g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kerwin/code/leetcode_solution/linked_list/_21.cc > CMakeFiles/demo.dir/_21.cc.i

linked_list/CMakeFiles/demo.dir/_21.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo.dir/_21.cc.s"
	cd /home/kerwin/code/leetcode_solution/build/linked_list && /usr/bin/x86_64-linux-gnu-g++-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kerwin/code/leetcode_solution/linked_list/_21.cc -o CMakeFiles/demo.dir/_21.cc.s

linked_list/CMakeFiles/demo.dir/_21.cc.o.requires:

.PHONY : linked_list/CMakeFiles/demo.dir/_21.cc.o.requires

linked_list/CMakeFiles/demo.dir/_21.cc.o.provides: linked_list/CMakeFiles/demo.dir/_21.cc.o.requires
	$(MAKE) -f linked_list/CMakeFiles/demo.dir/build.make linked_list/CMakeFiles/demo.dir/_21.cc.o.provides.build
.PHONY : linked_list/CMakeFiles/demo.dir/_21.cc.o.provides

linked_list/CMakeFiles/demo.dir/_21.cc.o.provides.build: linked_list/CMakeFiles/demo.dir/_21.cc.o


# Object files for target demo
demo_OBJECTS = \
"CMakeFiles/demo.dir/_21.cc.o"

# External object files for target demo
demo_EXTERNAL_OBJECTS =

linked_list/demo: linked_list/CMakeFiles/demo.dir/_21.cc.o
linked_list/demo: linked_list/CMakeFiles/demo.dir/build.make
linked_list/demo: linked_list/CMakeFiles/demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kerwin/code/leetcode_solution/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable demo"
	cd /home/kerwin/code/leetcode_solution/build/linked_list && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/demo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
linked_list/CMakeFiles/demo.dir/build: linked_list/demo

.PHONY : linked_list/CMakeFiles/demo.dir/build

linked_list/CMakeFiles/demo.dir/requires: linked_list/CMakeFiles/demo.dir/_21.cc.o.requires

.PHONY : linked_list/CMakeFiles/demo.dir/requires

linked_list/CMakeFiles/demo.dir/clean:
	cd /home/kerwin/code/leetcode_solution/build/linked_list && $(CMAKE_COMMAND) -P CMakeFiles/demo.dir/cmake_clean.cmake
.PHONY : linked_list/CMakeFiles/demo.dir/clean

linked_list/CMakeFiles/demo.dir/depend:
	cd /home/kerwin/code/leetcode_solution/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kerwin/code/leetcode_solution /home/kerwin/code/leetcode_solution/linked_list /home/kerwin/code/leetcode_solution/build /home/kerwin/code/leetcode_solution/build/linked_list /home/kerwin/code/leetcode_solution/build/linked_list/CMakeFiles/demo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : linked_list/CMakeFiles/demo.dir/depend

