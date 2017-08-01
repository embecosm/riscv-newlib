#include <machine/syscall.h>
#include <sys/time.h>
#include <sys/utime.h>

//----------------------------------------------------------------------
// utime
//----------------------------------------------------------------------
// Stub.

int utime(const char* path, const struct utimbuf* times)
{
  return -1;
}
