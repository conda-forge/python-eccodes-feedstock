#!/usr/bin/env bash

set -e

${PYTHON} builder.py
${PYTHON} -m pip install . -vv --no-deps
