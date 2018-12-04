load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

# python support
git_repository(
    name = "io_bazel_rules_python",
    remote = "https://github.com/bazelbuild/rules_python.git",
    commit = "f3a6a8d00a51a1f0e6d61bc7065c19fea2b3dd7a",
)


load("@io_bazel_rules_python//python:pip.bzl", "pip_repositories")

pip_repositories()

load("@io_bazel_rules_python//python:pip.bzl", "pip_import")

pip_import(
   name = "deps",
   requirements = "//:requirements.txt",
)

load("@deps//:requirements.bzl", "pip_install")
pip_install()

#git_repository(
#    name = "io_bazel_rules_docker_tmc",
#    remote = "https://github.com/tmc/rules_docker.git",
#    branch = "master",
#)

local_repository(
    name = "io_bazel_rules_docker",
    path = "/Users/tmc/go/src/github.com/bazelbuild/rules_docker",
)
# Call this to override the default docker toolchain configuration. This call
# should be placed BEFORE the call to "container_repositories" below to actually
# override the default toolchain configuration
load("@io_bazel_rules_docker//toolchains/docker:toolchain.bzl",
    docker_toolchain_configure="toolchain_configure"
)
docker_toolchain_configure(name = "docker_config")

load(
    "@io_bazel_rules_docker//container:container.bzl",
    "container_pull",
    container_repositories = "repositories",
)

container_repositories()

load(
    "@io_bazel_rules_docker//python:image.bzl",
    _py_image_repos = "repositories",
)

_py_image_repos()

load(
    "@io_bazel_rules_docker//python3:image.bzl",
    _py3_image_repos = "repositories",
)

_py3_image_repos()

