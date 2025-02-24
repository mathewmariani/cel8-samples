#!/bin/bash
# update the required cel8 headers

# repo url
CEL8_PREFIX="https://raw.githubusercontent.com/mathewmariani/cel8/main"

# files
CEL8_H="$CEL8_PREFIX/src/cel8.h"
CEL8_LICENSE="$CEL8_PREFIX/LICENSE"

# output directory
OUTPUT=./libs/cel8

# curl all headers and utils
curl $CEL8H > $OUTPUT/cel8.h
curl $CEL8_LICENSE > $OUTPUT/LICENSE