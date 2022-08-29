#!/bin/bash

set -eu

BASE_DIR="$( cd "$(dirname "$0")" ; pwd -P )"

LIBJPEG_TURBO_SRC_DIR=$BASE_DIR/src/libjpeg-turbo

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

host_arch="$(uname -m)"

clean_build=0
osx_arch_string=""
arch="$host_arch"
while [ "${1:-}" != "" ]
do
    case "$1" in
    --clean)
        clean_build=1
        ;;
    --osx_arch)
        if [ "$os" != "osx" ]
        then
            echo "ERROR: --osx_arch is only supported on OSX"
            exit 1
        fi
        osx_arch_string="-DCMAKE_OSX_ARCHITECTURES=$2"
        arch="$2"
        shift
        ;;
    *)
        echo "Usage: $0 [--debug]"
        exit 1
        ;;
    esac
    shift
done

LIBJPEG_BUILD_DIR=$BASE_DIR/src/libjpeg-turbo/build
LIBJPEG_INSTALL_DIR=$BASE_DIR/libjpeg-turbo/${os}-${arch}

if [ $clean_build -eq 1 ]
then
    rm -rf $LIBJPEG_INSTALL_DIR
    rm -rf $LIBJPEG_BUILD_DIR
fi

mkdir -p $LIBJPEG_BUILD_DIR
mkdir -p $LIBJPEG_INSTALL_DIR

cd $LIBJPEG_BUILD_DIR

cmake -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_DEFAULT_PREFIX=$LIBJPEG_INSTALL_DIR \
    -DENABLE_SHARED=FALSE -G"Unix Makefiles" \
    -DCMAKE_POSITION_INDEPENDENT_CODE=ON \
    -DWITH_JPEG8=TRUE \
    "$osx_arch_string" \
    $LIBJPEG_TURBO_SRC_DIR


make -j${cpus}
make install -j${cpus}
