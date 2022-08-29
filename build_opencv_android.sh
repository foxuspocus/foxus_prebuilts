#!/bin/bash

set -eu

BASE_DIR="$( cd "$(dirname "$0")" ; pwd -P )"

OPENCV_SRC_DIR=$BASE_DIR/src/opencv

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

OPENCV_BUILD_DIR=$BASE_DIR/src/opencv/build-android
OPENCV_INSTALL_DIR=$BASE_DIR/opencv/android

if [[ $* == *--clean* ]]
then
    rm -rf $OPENCV_BUILD_DIR
    rm -rf $OPENCV_INSTALL_DIR
fi

mkdir -p $OPENCV_INSTALL_DIR
mkdir -p $OPENCV_BUILD_DIR

#Only keep ximgproc
cd $OPENCV_BUILD_DIR
cmake -DOPENCV_EXTRA_MODULES_PATH=$BASE_DIR/src/opencv_contrib/modules \
    -DBUILD_opencv_face=OFF \
    -DBUILD_EXAMPLES=OFF \
    -DBUILD_JAVA=OFF \
    -DBUILD_ANDROID_EXAMPLES=OFF \
    -DBUILD_TESTS=OFF \
    -DBUILD_PERF_TESTS=OFF \
    -DCMAKE_BUILD_TYPE=Release \
    -DANDROID_ABI=arm64-v8a \
    -DANDROID_ARM_MODE=arm \
    -DANDROID_PLATFORM=android-21 \
    -DANDROID_TOOLCHAIN="clang" \
    -DANDROID_STL=c++_shared \
    -DCMAKE_POSITION_INDEPENDENT_CODE=ON \
    -DCMAKE_ASM_FLAGS="--target=aarch64-linux-android21" \
    -DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK_ROOT/build/cmake/android.toolchain.cmake \
    -DCMAKE_INSTALL_PREFIX="$OPENCV_INSTALL_DIR" \
    -DENABLE_STATIC="ON" \
    -DENABLE_SHARED="OFF" \
    -G"Unix Makefiles" \
    $OPENCV_SRC_DIR

make -j${cpus}
make install -j${cpus}
