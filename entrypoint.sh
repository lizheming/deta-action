#!/bin/sh

set -eu

export GITHUB="true"

if [ -n "$INPUT_ACCESS_TOKEN" ]
then
  SPACE_ACCESS_TOKEN="$INPUT_ACCESS_TOKEN"
fi

if [ -n "$INPUT_ID" ]
then
  SPACE_ID="$INPUT_ID"
fi

if [ -n "$INPUT_TAG" ]
then
  SPACE_PUSH_TAG="$INPUT_TAG"
fi

if [ -n "$INPUT_DIR" ]
then
  SPACE_DIR="$INPUT_DIR"
fi

if [ -n "$INPUT_LISTED" ]
then
  SPACE_LISTED="$INPUT_LISTED"
fi

if [ -n "$INPUT_NOTES" ]
then
  SPACE_NOTES="$INPUT_NOTES"
fi

if [ -n "$INPUT_RID" ]
then
  SPACE_RID="$INPUT_RID"
fi

if [ -n "$INPUT_VERSION" ]
then
  SPACE_PUSH_TAG="$INPUT_VERSION"
fi

sh /bin/script.sh