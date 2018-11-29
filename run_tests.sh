#!/bin/bash
bazel test --python_top=//:python36 ... --test_output=errors
bazel test --python_top=//:python37 ... --test_output=errors
