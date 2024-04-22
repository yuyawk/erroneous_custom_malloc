"""Implement `cc_oom_test`.
"""

visibility("//tests/...")

def cc_oom_test(**kwargs):
    """`cc_test` for testing the situation where heap allocation fails.

    Args:
        **kwargs(dict): Passed to internal `cc_test`.
    """

    if kwargs.pop("malloc", None) != None:
        fail(
            "Invalid argument: 'malloc'",
        )

    malloc_label = Label("//bzl:erroneous_malloc")

    native.cc_test(
        malloc = malloc_label,
        **kwargs
    )
