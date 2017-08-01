#include <machine/syscall.h>
#include <sys/types.h>

//----------------------------------------------------------------------
// read                                                                 
//----------------------------------------------------------------------
// Read from a file.

ssize_t read(int file, void* ptr, size_t len)
{
  return syscall_errno(SYS_read, file, ptr, len, 0);
}
