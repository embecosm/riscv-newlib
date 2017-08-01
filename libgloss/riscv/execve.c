#include <machine/syscall.h>
#include <errno.h>

//------------------------------------------------------------------------
// execve                                                               
//------------------------------------------------------------------------
// Transfer control to a new process. Minimal implementation for a
// system without processes from newlib documentation.

int execve(const char* name, char* const argv[], char* const env[])
{
  errno = ENOMEM;
  return -1;
}
