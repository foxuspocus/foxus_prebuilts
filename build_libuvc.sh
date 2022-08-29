#!/bin/bash

set -eu

BASE_DIR="$( cd "$(dirname "$0")" ; pwd -P )"

LIBUVC_SRC_DIR=$BASE_DIR/src/libuvc

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

LIBUVC_BUILD_DIR=$BASE_DIR/src/libuvc/build
LIBUVC_INSTALL_DIR=$BASE_DIR/libuvc/${os}-${arch}

LIBUSB_INSTALL_DIR=$BASE_DIR/libusb/${os}-${arch}
LIBJPEGTURBO_INSTALL_DIR=$BASE_DIR/libjpeg-turbo/${os}-${arch}

if [[ $* == *--clean* ]]
then
    rm -rf $LIBUVC_BUILD_DIR
    rm -rf $LIBUVC_INSTALL_DIR
fi


mkdir -p $LIBUVC_BUILD_DIR
mkdir -p $LIBUVC_INSTALL_DIR

cd $LIBUVC_BUILD_DIR

cmake $LIBUVC_SRC_DIR -DCMAKE_INSTALL_PREFIX=$LIBUVC_INSTALL_DIR \
    -DCMAKE_PREFIX_PATH="$LIBJPEGTURBO_INSTALL_DIR;$LIBUSB_INSTALL_DIR" \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_BUILD_TARGET="Static" -G"Unix Makefiles" \
    -DCMAKE_POSITION_INDEPENDENT_CODE=ON -DBUILD_EXAMPLE=OFF \
    -DIMPORTED_JPEG_INCLUDE_DIRS="$LIBJPEGTURBO_INSTALL_DIR/include" \
    -DIMPORTED_JPEG_LIBRARIES="$LIBJPEGTURBO_INSTALL_DIR/lib/libturbojpeg.a"

make -j${cpus}
make -j${cpus} install
