#include <machine/syscall.h>
#include <sys/types.h>

//------------------------------------------------------------------------
// lseek                                                                
//------------------------------------------------------------------------
// Set position in a file.

off_t lseek(int file, off_t ptr, int dir)
{
  return syscall_errno(SYS_lseek, file, ptr, dir, 0);
}
