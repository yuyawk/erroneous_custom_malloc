#include "erroneous_malloc.h"

void *malloc(size_t size)
{
    // Always fail to allocate.
    return NULL;
}
