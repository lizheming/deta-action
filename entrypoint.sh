#!/bin/sh

set -eu

export GITHUB="true"

if [ -n "$INPUT_ACCESS_TOKEN" ]
then
  export SPACE_ACCESS_TOKEN="$INPUT_ACCESS_TOKEN"
fi

if [ -n "$INPUT_ID" ]
then
  export SPACE_ID="$INPUT_ID"
fi

if [ -n "$INPUT_TAG" ]
then
  export SPACE_PUSH_TAG="$INPUT_TAG"
fi

if [ -n "$INPUT_DIR" ]
then
  export SPACE_DIR="$INPUT_DIR"
fi

if [ -n "$INPUT_LISTED" ]
then
  export SPACE_LISTED="$INPUT_LISTED"
fi

if [ -n "$INPUT_NOTES" ]
then
  export SPACE_NOTES="$INPUT_NOTES"
fi

if [ -n "$INPUT_RID" ]
then
  export SPACE_RID="$INPUT_RID"
fi

if [ -n "$INPUT_VERSION" ]
then
  export SPACE_PUSH_TAG="$INPUT_VERSION"
fi

# debug
env

sh /bin/script.sh