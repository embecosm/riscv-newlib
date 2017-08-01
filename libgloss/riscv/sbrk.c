#include <machine/syscall.h>
#include <sys/types.h>

//----------------------------------------------------------------------
// sbrk                                                                 
//----------------------------------------------------------------------
// Increase program data space. As malloc and related functions depend
// on this, it is useful to have a working implementation. The following
// is suggested by the newlib docs and suffices for a standalone
// system.

void* sbrk(ptrdiff_t incr)
{
  extern unsigned char _end[];    // Defined by linker
  static unsigned long heap_end;

  if (heap_end == 0)
    heap_end = (long)_end;

  heap_end += incr;
  return (void *)(heap_end - incr);
}
