#include <machine/syscall.h>
#include <sys/types.h>

//------------------------------------------------------------------------
// write                                                                
//------------------------------------------------------------------------
// Write to a file.

ssize_t write(int file, const void* ptr, size_t len)
{
  return syscall_errno(SYS_write, file, ptr, len, 0);
}
