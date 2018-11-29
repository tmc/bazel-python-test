An attempt to describe two concurrent python runtimes in a bazel workspace.

```sh
$ bazel test --python_top=//:python36 ... --test_output=errors
INFO: Build options have changed, discarding analysis cache.
INFO: Analysed 4 targets (0 packages loaded, 289 targets configured).
INFO: Found 2 targets and 2 test targets...
FAIL: //tests:test_python37 (see /private/var/tmp/_bazel_tmc/f9ecf3bdcb30f582bc9a7be4534915f5/execroot/__main__/bazel-out/darwin-fastbuild/testlogs/tests/test_python37/test.log)
INFO: From Testing //tests:test_python37:
==================== Test output for //tests:test_python37:
3.6.5
Traceback (most recent call last):
  File "/private/var/tmp/_bazel_tmc/f9ecf3bdcb30f582bc9a7be4534915f5/sandbox/darwin-sandbox/2/execroot/__main__/bazel-out/darwin-fastbuild/bin/tests/test_python37.runfiles/__main__/tests/test_python37.py", line 4, in <module>
    assert(version == "3.7.1")
AssertionError
================================================================================
INFO: Elapsed time: 0.764s, Critical Path: 0.60s, Remote (0.00% of the time): [queue: 0.00%, setup: 0.00%, process: 0.00%]
INFO: 2 processes: 2 darwin-sandbox.
INFO: Build completed, 1 test FAILED, 5 total actions
//tests:test_python36                                                    PASSED in 0.6s
//tests:test_python37                                                    FAILED in 0.6s
  /private/var/tmp/_bazel_tmc/f9ecf3bdcb30f582bc9a7be4534915f5/execroot/__main__/bazel-out/darwin-fastbuild/testlogs/tests/test_python37/test.log

Executed 2 out of 2 tests: 1 test passes and 1 fails locally.
INFO: Build completed, 1 test FAILED, 5 total actions
```

```sh
$ bazel test --python_top=//:python37 ... --test_output=errors
INFO: Build options have changed, discarding analysis cache.
INFO: Analysed 4 targets (0 packages loaded, 290 targets configured).
INFO: Found 2 targets and 2 test targets...
FAIL: //tests:test_python36 (see /private/var/tmp/_bazel_tmc/f9ecf3bdcb30f582bc9a7be4534915f5/execroot/__main__/bazel-out/darwin-fastbuild/testlogs/tests/test_python36/test.log)
INFO: From Testing //tests:test_python36:
==================== Test output for //tests:test_python36:
3.7.1
Traceback (most recent call last):
  File "/private/var/tmp/_bazel_tmc/f9ecf3bdcb30f582bc9a7be4534915f5/sandbox/darwin-sandbox/1/execroot/__main__/bazel-out/darwin-fastbuild/bin/tests/test_python36.runfiles/__main__/tests/test_python36.py", line 4, in <module>
    assert(version == "3.6.5")
AssertionError
================================================================================
INFO: Elapsed time: 0.700s, Critical Path: 0.54s, Remote (0.00% of the time): [queue: 0.00%, setup: 0.00%, process: 0.00%]
INFO: 2 processes: 2 darwin-sandbox.
INFO: Build completed, 1 test FAILED, 5 total actions
//tests:test_python37                                                    PASSED in 0.5s
//tests:test_python36                                                    FAILED in 0.5s
  /private/var/tmp/_bazel_tmc/f9ecf3bdcb30f582bc9a7be4534915f5/execroot/__main__/bazel-out/darwin-fastbuild/testlogs/tests/test_python36/test.log

Executed 2 out of 2 tests: 1 test passes and 1 fails locally.
INFO: Build completed, 1 test FAILED, 5 total actions
```
