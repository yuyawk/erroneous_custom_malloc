# erroneous_custom_malloc

This repository demonstrates a custom `malloc`implementation for testing heap allocation failure.

## Description

It's generally hard to test the scenario where the execution environment runs out of memory. This repository illustrates one handy approach to test the case where the heap memory shortage occurs.

[`//bzl:erroneous_malloc`](bzl/BUILD.bazel) defines a mock `malloc` function which always fails to allocate a heap. By setting this mock to the `malloc` attribute in `cc_test`, we can test the behavior of the application failing to allocate a heap.

## Testing

[`development/cli/execute_tests.bash`](development/cli/execute_tests.bash) is the test entrypoint script.

## CI

[![Run tests](https://github.com/yuyawk/erroneous_custom_malloc/actions/workflows/tests.yml/badge.svg)](https://github.com/yuyawk/erroneous_custom_malloc/actions/workflows/tests.yml)
