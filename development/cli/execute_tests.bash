#!/usr/bin/env bash
#
# Common prerequisites for manual bash execution

set -euo pipefail

# Absolute path of `development/cli/` directory
SCRIPT_DIR=$(cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)

# Absolute path of the repository root
REPO_ROOT_DIR=$(realpath "${SCRIPT_DIR}/../..")

# Bazel executable with some arguments
BAZEL_EXECUTABLE=(
    "env"
    "-i"
    BAZEL_DO_NOT_DETECT_CPP_TOOLCHAIN=1
    "BAZELISK_HOME=${REPO_ROOT_DIR}/.cache/bazelisk"
    "HOME=${HOME}"
    "PATH=${PATH}"
    bazelisk
)

cd "${REPO_ROOT_DIR}"

"${BAZEL_EXECUTABLE[@]}" test //...
