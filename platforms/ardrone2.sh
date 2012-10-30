#!/bin/bash

export SOURCERY="`cd ../arm-2009q1 && pwd`"
export TOOL_PREFIX="${SOURCERY}/bin/arm-none-linux-gnueabi"
export CXX="${TOOL_PREFIX}-g++"
export AR="${TOOL_PREFIX}-ar"
export RANLIB="${TOOL_PREFIX}-ranlib"
export CC="${TOOL_PREFIX}-gcc"
export LINK="${CXX}"

export CCFLAGS="-march=armv7-a -mtune=cortex-a8 -mfpu=vfp"
export ARM_TARGET_LIB="${SOURCERY}/arm-none-linux-gnueabi/libc"

PREFIX_DIR="`pwd`/build"

cd node
./configure --without-snapshot --dest-cpu=arm --dest-os=linux --prefix="${PREFIX_DIR}"
make install --jobs=16
