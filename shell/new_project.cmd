@echo off

md build doc
touch README.md

set drty=%USERPROFILE%\usr\shell

echo %drty%\template_main_cpp
cp %drty%\template_main_cpp main.cpp
cp %drty%\template_cmake CMakeLists.txt 
cp %drty%\PreLoad.cmake PreLoad.cmake
cp %drty%\template_gitignore_cpp .gitignore
cp %drty%\template_doc_cmake .\doc\CMakeLists.txt
cp %drty%\Doxyfile .\doc\Doxyfile 
