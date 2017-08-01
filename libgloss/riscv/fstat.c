#include <machine/syscall.h>
#include <sys/stat.h>

//------------------------------------------------------------------------
// fstat                                                                
//------------------------------------------------------------------------
// Status of an open file. The sys/stat.h header file required is
// distributed in the include subdirectory for this C library.

int fstat(int file, struct stat* st)
{
  return syscall_errno(SYS_fstat, file, st, 0, 0);
}
