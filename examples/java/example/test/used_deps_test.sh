#!/bin/sh

set -e
SCRIPT_DIR="$(dirname "$0")"
jdeps_file="$(realpath $SCRIPT_DIR/../../../bazel-bin/java/ExampleTest.jdeps)"

if ! grep -q "junit-jupiter-api" $jdeps_file; then
  echo "bazel-bin/java/ExampleTest.jdeps) does not contain 'junit-jupiter-api'."
  exit 1
fi

echo "expected dependency found"
