#!/bin/sh

set -e
SCRIPT_DIR="$(dirname "$0")"

echo "\n"
echo "\n"
echo "--output build"
bazel cquery --output build "@bazel_tools//tools/jdk:current_java_toolchain + @bazel_tools//tools/jdk:current_java_runtime" 2>/dev/null

echo "\n"
echo "\n"
echo "--output starlark"
bazel cquery --output starlark --starlark:file $SCRIPT_DIR/toolchains-query-format.scl "@bazel_tools//tools/jdk:current_java_toolchain + @bazel_tools//tools/jdk:current_java_runtime" 2>/dev/null

echo "\n"
echo "\n"
