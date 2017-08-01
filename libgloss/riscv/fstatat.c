#include <machine/syscall.h>

//------------------------------------------------------------------------
// fstatat                                                                 
//------------------------------------------------------------------------
// Status of a file (by name) in a given directory.

int fstatat(int dirfd, const char* file, struct stat* st, int flags)
{
  return syscall_errno(SYS_fstatat, dirfd, file, st, flags);
}
