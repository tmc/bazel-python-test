# BUILD
# This file describes common build targets.
py_runtime(
    name = "python36",
    files = [],
    interpreter_path = "/usr/local/Cellar/python@3.6/3.6.5/bin/python3",
    visibility = ["//visibility:public"],
)

load("@deps//:requirements.bzl", "requirement")

load("@io_bazel_rules_docker//python:image.bzl", "py_image")
load("@io_bazel_rules_docker//python3:image.bzl", "py3_image")

py_binary(
    name = "hello_world",
    srcs = ["hello-world.py"],
    deps = [ requirement("httplib2"), ],
    main = "hello-world.py",
)
py_image(
    name = "hello_world_image",
    srcs = ["hello-world.py"],
    deps = [ requirement("httplib2"), ],
    main = "hello-world.py",
)
py3_image(
    name = "hello_world_3",
    srcs = ["hello-world.py"],
    deps = [ requirement("httplib2"), ],
    main = "hello-world.py",
)
