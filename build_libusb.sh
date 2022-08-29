#!/bin/bash

set -eu

BASE_DIR="$( cd "$(dirname "$0")" ; pwd -P )"

LIBUSB_SRC_DIR=$BASE_DIR/src/libusb



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

LIBUSB_INSTALL_DIR="$BASE_DIR/libusb/${os}-${arch}"

if [[ $* == *--clean* ]]
then
    rm -rf $LIBUSB_INSTALL_DIR
    cd $LIBUSB_SRC_DIR
    git clean -xdf
fi

mkdir -p $LIBUSB_INSTALL_DIR

cd $LIBUSB_SRC_DIR

autoreconf --install
autoconf

./configure "CC=clang" "CXX=clang++" --prefix=$LIBUSB_INSTALL_DIR --with-pic=yes --disable-shared

make
make install
