#!/usr/bin/env bash

set -e

# we need to add the compiled extension to the package
# so we mangle the MANIFEST.in
echo "recursive-include gribapi *.so" >> MANIFEST.in

${PYTHON} builder.py
${PYTHON} -m pip install . -vv --no-deps
