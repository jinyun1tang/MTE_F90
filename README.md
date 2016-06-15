# MTE_F90
moudle testing example for developing F90 based code

Jinyun Tang (jinyuntang@gmail.com)

This provides a basic code structure for increamental development and test of F90 codes.
It applies the OOP coding style and uses the CMake for compilation.

#System requirements
The example code requires cmake, and some fortran compiler.



#Test

On OS, type

make config

will setup cmake files and generate relevant directories

make install

will generate executables in local/bin

make distclean

will clean up all directories generated from using make
