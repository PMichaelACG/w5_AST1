#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
bash build.sh
./build/test-ast
./build/test-parser-ast
python3 tests/run_tests.py
