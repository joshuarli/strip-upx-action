#!/bin/sh

# i'm guessing this is the volume-mounted directory where steps: executes in
cd "$GITHUB_WORKSPACE"

echo "running strip"
strip "$INPUT_STRIP_ARGS" "$INPUT_INFILE"

echo "running upx"
upx "$INPUT_UPX_ARGS" "$INPUT_INFILE"
