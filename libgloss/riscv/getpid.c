#include <machine/syscall.h>

//------------------------------------------------------------------------
// getpid                                                               
//------------------------------------------------------------------------
// Get process id. This is sometimes used to generate strings unlikely
// to conflict with other processes. Minimal implementation for a
// system without processes just returns 1.

int getpid() 
{
  return 1;
}
