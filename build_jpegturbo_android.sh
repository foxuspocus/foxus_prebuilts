#!/bin/bash

set -eu

BASE_DIR="$( cd "$(dirname "$0")" ; pwd -P )"

LIBJPEG_TURBO_SRC_DIR=$BASE_DIR/src/libjpeg-turbo

host_system="$(uname -s)"

case "$host_system" in
    Linux)
        cpus="$(nproc)"
    ;;
    Darwin)
        cpus="$(sysctl -n hw.logicalcpu)"
    ;;
    *)
        echo "System $host_system is unsupported"
        exit 1
    ;;
esac

profiler_enabled=""

while [ "${1:-}" != "" ]
do
    case "$1" in

    --profiler)
        profiler_enabled="TRUE"
        ;;
    *)
    esac
    shift
done

LIBJPEG_LINUX_BUILD_DIR=$BASE_DIR/src/libjpeg-turbo/build
LIBJPEG_LINUX_INSTALL_DIR=$BASE_DIR/libjpeg-turbo/android

if [[ $* == *--clean* ]]
then
    rm -rf $LIBJPEG_LINUX_INSTALL_DIR
    rm -rf $LIBJPEG_LINUX_BUILD_DIR
fi

mkdir -p $LIBJPEG_LINUX_BUILD_DIR
mkdir -p $LIBJPEG_LINUX_INSTALL_DIR

cd $LIBJPEG_LINUX_BUILD_DIR

cmake $LIBJPEG_TURBO_SRC_DIR -DCMAKE_BUILD_TYPE=Release \
    -DANDROID_ABI=arm64-v8a \
    -DANDROID_ARM_MODE=arm \
    -DANDROID_STL=c++_shared \
    -DANDROID_PLATFORM=android-21 \
    -DANDROID_TOOLCHAIN="clang" \
    -DCMAKE_POSITION_INDEPENDENT_CODE=ON \
    -DCMAKE_ASM_FLAGS="--target=aarch64-linux-android21" \
    -DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK_ROOT/build/cmake/android.toolchain.cmake \
    -DCMAKE_INSTALL_PREFIX="$LIBJPEG_LINUX_INSTALL_DIR" \
    -DENABLE_STATIC="ON" \
    -DENABLE_SHARED="OFF" \
    -DENABLE_PERFETTO=$profiler_enabled \
    -G"Unix Makefiles"

make -j${cpus}
make install -j${cpus}
