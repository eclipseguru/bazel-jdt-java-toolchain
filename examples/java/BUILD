load("@rules_java//java:defs.bzl", "java_library")
load("@contrib_rules_jvm//java:defs.bzl", "java_junit5_test")
load("@rules_jvm_external//:defs.bzl", "artifact")

package(default_visibility = ["//visibility:public"])

java_library(
    name = "simplest",
    srcs = ["example/simplest/application/HelloWorld.java"],
)

java_library(
    name = "simple1",
    srcs = ["example/simple1/application/HelloWithSimpleDependency.java"],
    deps = [":simplest"],
)

filegroup(
    name = "greeting_src_jar",
    srcs = ["greeting.srcjar"],
)

java_library(
    name = "srcjartest",
    srcs = [
        "example/srcjartest/application/HelloWorldSrcJar.java",
        ":greeting_src_jar",
    ],
)

java_junit5_test(
    name = "ExampleTest",
    srcs = ["example/test/ExampleTest.java"],
    test_class = "example.test.ExampleTest",
    runtime_deps = [
        artifact("org.junit.jupiter:junit-jupiter-engine"),
    ],
    deps = [
        artifact("org.junit.jupiter:junit-jupiter-api"),
        artifact("org.junit.platform:junit-platform-launcher"),
        artifact("org.junit.platform:junit-platform-reporting"),
    ],
)

