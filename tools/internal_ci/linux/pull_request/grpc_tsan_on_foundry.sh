#!/usr/bin/env bash
# Copyright 2017 gRPC authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

EXTRA_FLAGS="--copt=-gmlt --strip=never --copt=-fsanitize=thread --linkopt=-fsanitize=thread --test_timeout=3600 --action_env=TSAN_OPTIONS=suppressions=test/core/util/tsan_suppressions.txt:halt_on_error=1:second_deadlock_stack=1"
EXCLUDE_TESTS="--test_tag_filters=-qps_json_driver,-json_run_localhost"
github/grpc/tools/internal_ci/linux/grpc_bazel_on_foundry_base.sh "${EXTRA_FLAGS}" "${EXCLUDE_TESTS}"
