#ifndef BZL_ERRONEOUS_MALLOC_H
#define BZL_ERRONEOUS_MALLOC_H

#include <stddef.h>

/// @brief Allocates uninitialized storage.
/// @param size Byte size of the storage.
/// @return On success, returns the pointer to the beginning of newly allocated memory. On failure, returns a null pointer.
void *malloc(size_t size);

#endif // BZL_ERRONEOUS_MALLOC_H
