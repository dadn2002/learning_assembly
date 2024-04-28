#include "../../imports.h"

/* Information 
create .exe of .cpp using .obj data
    gcc name.cpp name2.obj -o name.exe  (-o is to rename, usual output is a.exe)
to create a .obj from .asm
    ml64 /c /Fo"name.obj" name.asm
*/

extern "C" int SomeFunction();

int main(){

    info("Reading value saved in rax of SomeFunction(): %d", SomeFunction());
    return 0;
}