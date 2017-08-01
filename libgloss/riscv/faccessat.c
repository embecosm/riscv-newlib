#include <machine/syscall.h>

//------------------------------------------------------------------------
// faccessat                                                                 
//------------------------------------------------------------------------
// Permissions of a file (by name) in a given directory.

int faccessat(int dirfd, const char* file, int mode, int flags)
{
  return syscall_errno(SYS_faccessat, dirfd, file, mode, flags);
}
