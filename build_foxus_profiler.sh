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

FOXUS_PROFILER_INSTALL_DIR="$BASE_DIR/foxus_profiler/${os}-${arch}"

if [[ $* == *--clean* ]]
then
    rm -rf $FOXUS_PROFILER_INSTALL_DIR
    cd $FOXUS_PROFILER_SRC_DIR
    git clean -xdf
fi

mkdir -p $FOXUS_PROFILER_INSTALL_DIR

cd $FOXUS_PROFILER_SRC_DIR

cmake $FOXUS_PROFILER_SRC_DIR -DCMAKE_INSTALL_PREFIX=$FOXUS_PROFILER_INSTALL_DIR \
    -DCMAKE_PREFIX_PATH="$FOXUS_PROFILER_INSTALL_DIR" \
    -DCMAKE_BUILD_TYPE=Release

make -j${cpus}
make -j${cpus} install
