#include <machine/syscall.h>
#include <sys/time.h>
#include <unistd.h>

//----------------------------------------------------------------------
// sysconf
//----------------------------------------------------------------------
// Get configurable system variables

long sysconf(int name)
{
  switch(name)
  {
    case _SC_CLK_TCK:
      return CLOCKS_PER_SEC;
  }

  return -1;
}
