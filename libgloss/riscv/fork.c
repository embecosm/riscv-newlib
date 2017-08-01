#include <machine/syscall.h>
#include <errno.h>

//------------------------------------------------------------------------
// fork                                                                 
//------------------------------------------------------------------------
// Create a new process. Minimal implementation for a system without
// processes from newlib documentation.

int fork() 
{
  errno = EAGAIN;
  return -1;
}
