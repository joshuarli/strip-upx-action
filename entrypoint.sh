#!/bin/sh

# i'm guessing this is the volume-mounted directory where steps: executes in
cd "$GITHUB_WORKSPACE"

# TODO: see TODO in .github/workflows/test.yml
strip --strip-all ./hi
upx -9 ./hi
