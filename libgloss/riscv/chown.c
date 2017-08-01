#include <machine/syscall.h>
#include <sys/types.h>

//----------------------------------------------------------------------
// chown
//----------------------------------------------------------------------
// Stub.

int chown(const char* path, uid_t owner, gid_t group)
{
  return -1;
}
