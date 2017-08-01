#include <machine/syscall.h>
#include <sys/stat.h>

//------------------------------------------------------------------------
// lstat                                                                 
//------------------------------------------------------------------------
// Status of a link (by name).

int lstat(const char* file, struct stat* st)
{
  return syscall_errno(SYS_lstat, file, st, 0, 0);
}
