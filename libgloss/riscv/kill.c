#include <machine/syscall.h>
#include <errno.h>

//------------------------------------------------------------------------
// kill                                                                 
//------------------------------------------------------------------------
// Send a signal. Minimal implementation for a system without processes
// just causes an error.

int kill(int pid, int sig)
{
  errno = EINVAL;
  return -1;
}
