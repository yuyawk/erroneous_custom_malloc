# erroneous_custom_malloc

This repository demonstrates a custom `malloc`implementation for testing allocation failure.

`//bzl:erroneous_malloc` defines a mock `malloc` function which always fails to allocate a heap. By combining this mock with `malloc` attribute in `cc_test`, we can test the behavior of the application when it fails to allocate a heap.
