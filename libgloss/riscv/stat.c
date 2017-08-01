#include <machine/syscall.h>

//------------------------------------------------------------------------
// stat                                                                 
//------------------------------------------------------------------------
// Status of a file (by name).

int stat(const char* file, struct stat* st)
{
  return syscall_errno(SYS_stat, file, st, 0, 0);
}
