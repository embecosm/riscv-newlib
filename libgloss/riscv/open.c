#include <machine/syscall.h>

//------------------------------------------------------------------------
// open                                                                 
//------------------------------------------------------------------------
// Open a file.

int open(const char* name, int flags, int mode)
{
  return syscall_errno(SYS_open, name, flags, mode, 0);
}
