# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/muhammad/Qt/Tools/CMake/bin/cmake

# The command to remove a file.
RM = /home/muhammad/Qt/Tools/CMake/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/media/muhammad/my hard-drive/qt_qml/ProjectWorkSpace/QML_Tesla"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/media/muhammad/my hard-drive/qt_qml/ProjectWorkSpace/QML_Tesla/build/Desktop_Qt_6_7_0-Debug"

# Utility rule file for QML_Tesla_qmlimportscan.

# Include any custom commands dependencies for this target.
include CMakeFiles/QML_Tesla_qmlimportscan.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/QML_Tesla_qmlimportscan.dir/progress.make

CMakeFiles/QML_Tesla_qmlimportscan: .qt_plugins/Qt6_QmlPlugins_Imports_QML_Tesla.cmake

.qt_plugins/Qt6_QmlPlugins_Imports_QML_Tesla.cmake: /home/muhammad/Qt/6.7.0/gcc_64/libexec/qmlimportscanner
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir="/media/muhammad/my hard-drive/qt_qml/ProjectWorkSpace/QML_Tesla/build/Desktop_Qt_6_7_0-Debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Running qmlimportscanner for QML_Tesla"
	cd "/media/muhammad/my hard-drive/qt_qml/ProjectWorkSpace/QML_Tesla" && /home/muhammad/Qt/6.7.0/gcc_64/libexec/qmlimportscanner "@/media/muhammad/my hard-drive/qt_qml/ProjectWorkSpace/QML_Tesla/build/Desktop_Qt_6_7_0-Debug/.qt_plugins/Qt6_QmlPlugins_Imports_QML_Tesla.rsp"

QML_Tesla_qmlimportscan: .qt_plugins/Qt6_QmlPlugins_Imports_QML_Tesla.cmake
QML_Tesla_qmlimportscan: CMakeFiles/QML_Tesla_qmlimportscan
QML_Tesla_qmlimportscan: CMakeFiles/QML_Tesla_qmlimportscan.dir/build.make
.PHONY : QML_Tesla_qmlimportscan

# Rule to build all files generated by this target.
CMakeFiles/QML_Tesla_qmlimportscan.dir/build: QML_Tesla_qmlimportscan
.PHONY : CMakeFiles/QML_Tesla_qmlimportscan.dir/build

CMakeFiles/QML_Tesla_qmlimportscan.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/QML_Tesla_qmlimportscan.dir/cmake_clean.cmake
.PHONY : CMakeFiles/QML_Tesla_qmlimportscan.dir/clean

CMakeFiles/QML_Tesla_qmlimportscan.dir/depend:
	cd "/media/muhammad/my hard-drive/qt_qml/ProjectWorkSpace/QML_Tesla/build/Desktop_Qt_6_7_0-Debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/media/muhammad/my hard-drive/qt_qml/ProjectWorkSpace/QML_Tesla" "/media/muhammad/my hard-drive/qt_qml/ProjectWorkSpace/QML_Tesla" "/media/muhammad/my hard-drive/qt_qml/ProjectWorkSpace/QML_Tesla/build/Desktop_Qt_6_7_0-Debug" "/media/muhammad/my hard-drive/qt_qml/ProjectWorkSpace/QML_Tesla/build/Desktop_Qt_6_7_0-Debug" "/media/muhammad/my hard-drive/qt_qml/ProjectWorkSpace/QML_Tesla/build/Desktop_Qt_6_7_0-Debug/CMakeFiles/QML_Tesla_qmlimportscan.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/QML_Tesla_qmlimportscan.dir/depend

