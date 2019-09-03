#!/bin/sh

# i'm guessing this is the volume-mounted directory where steps: executes in
cd "$GITHUB_WORKSPACE"

# TODO: see TODO in .github/workflows/test.yml
echo "running strip"
strip -v --strip-all ./hi

echo "running upx"
upx -9 ./hi
