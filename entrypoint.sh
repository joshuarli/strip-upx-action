#!/bin/sh

# i'm guessing this is the volume-mounted directory where steps: executes in
cd "$GITHUB_WORKSPACE"

report_size () {
    printf '\nsize: %s\n\n' "$(ls -lh ${INPUT_INFILE} | awk '{print $5}')"
}

report_size
echo "running strip"
strip "$INPUT_STRIP_ARGS" "$INPUT_INFILE"

report_size
echo "running upx"
upx "$INPUT_UPX_ARGS" "$INPUT_INFILE"

report_size
