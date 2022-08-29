#!/bin/bash

set -eu

BASE_DIR="$( cd "$(dirname "$0")" ; pwd -P )"

FOXUS_PROFILER_SRC_DIR=$BASE_DIR/src/foxus_profiler

host_system="$(uname -s)"

case "$host_system" in
    Linux)
        cpus="$(nproc)"
        os="linux"
    ;;
    Darwin)
        cpus="$(sysctl -n hw.logicalcpu)"
        os="osx"
    ;;
    *)
        echo "System $host_system is unsupported"
        exit 1
    ;;
esac

arch="$(uname -m)"

FOXUS_PROFILER_INSTALL_DIR="$BASE_DIR/foxus_profiler/android"

if [[ $* == *--clean* ]]
then
    rm -rf $FOXUS_PROFILER_INSTALL_DIR
    cd $FOXUS_PROFILER_SRC_DIR
    git clean -xdf
fi

mkdir -p $FOXUS_PROFILER_INSTALL_DIR

cd $FOXUS_PROFILER_SRC_DIR

cmake $FOXUS_PROFILER_SRC_DIR -DCMAKE_INSTALL_PREFIX=$FOXUS_PROFILER_INSTALL_DIR \
    -DANDROID_ABI=arm64-v8a \
    -DANDROID_STL=c++_shared \
    -DANDROID_ARM_MODE=arm \
    -DANDROID_PLATFORM=android-21 \
    -DANDROID_TOOLCHAIN="clang" \
    -DCMAKE_ASM_FLAGS="--target=aarch64-linux-android21" \
    -DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK_ROOT/build/cmake/android.toolchain.cmake \
    -DCMAKE_PREFIX_PATH="$FOXUS_PROFILER_INSTALL_DIR" \
    -DCMAKE_BUILD_TYPE=Release


make -j${cpus}
make -j${cpus} install
