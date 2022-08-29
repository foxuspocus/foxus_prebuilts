#!/bin/bash
set -eu

BASE_DIR="$( cd "$(dirname "$0")" ; pwd -P )"
OPENCV_SRC_DIR=$BASE_DIR/src/opencv

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
arch="$host_arch"
while [ "${1:-}" != "" ]
do
    case "$1" in
    --clean)
        clean_build=1
        ;;
    *)
        echo "Usage: $0 [--debug]"
        exit 1
        ;;
    esac
    shift
done

# Build OpenCV for Linux
OPENCV_BUILD_DIR=$BASE_DIR/src/opencv/build
OPENCV_INSTALL_DIR=$BASE_DIR/opencv/${os}-${arch}

if [ $clean_build -eq 1 ]
then
    rm -rf $OPENCV_BUILD_DIR
    rm -rf $OPENCV_INSTALL_DIR
fi

mkdir -p $OPENCV_INSTALL_DIR
mkdir -p $OPENCV_BUILD_DIR

cd $OPENCV_BUILD_DIR
cmake $OPENCV_SRC_DIR \
    -DCMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT=False \
    -DOPENCV_EXTRA_MODULES_PATH=$BASE_DIR/src/opencv_contrib/modules \
    -DBUILD_opencv_face=OFF \
    -DBUILD_opencv_apps=FALSE \
    -DBUILD_EXAMPLES=OFF \
    -DBUILD_JAVA=OFF \
    -DBUILD_ANDROID_EXAMPLES=OFF \
    -DBUILD_TESTS=OFF \
    -DBUILD_PERF_TESTS=OFF \
    -DCMAKE_BUILD_TYPE=Release \
    -DOPENCV_PYTHON_SKIP_DETECTION=TRUE \
    -DCMAKE_INSTALL_PREFIX="$OPENCV_INSTALL_DIR" \
    -DBUILD_SHARED_LIBS=FALSE \
    -DWITH_FFMPEG=FALSE \
    -DBUILD_ZLIB=TRUE \
    -DBUILD_JPEG=ON \
    -DBUILD_WEBP=ON \
    -DBUILD_TIFF=ON \
    -DBUILD_PNG=ON \
    -DBUILD_OPENEXR=ON \
    -DENABLE_STATIC="ON" \
    -DENABLE_SHARED="OFF" \
    -DOPENCV_SKIP_CMAKE_CXX_STANDARD=ON \
    -DCMAKE_CXX_STANDARD=14 \
    -DCMAKE_CXX_EXTENSIONS=OFF \
    -G"Unix Makefiles"


make -j${cpus}
make -j${cpus} install
