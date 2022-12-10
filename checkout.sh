#!/bin/bash
set -eu

BASE_DIR="$( cd "$(dirname "$0")" ; pwd -P )"

mkdir -p $BASE_DIR/src

function clone_or_update() {
    url="$1"
    name="$2"
    commit="$3"
    cd $BASE_DIR/src
    if [ ! -d $name ]
    then
        if [[ $url = ../* ]]
        then
            origin_url="$(git remote get-url origin)"
            while [[ $url = ../* ]]
            do
                origin_url="${origin_url%/$(basename $origin_url)}"
                url="${url#../}"
            done
            url="$origin_url/$url"
        fi
        git clone $url $name
        cd $name
        git checkout $commit
    else
        cd $name
        git fetch origin
        git checkout $commit
    fi
}

clone_or_update https://github.com/opencv/opencv.git opencv dad26339a975b49cfb6c7dbe4bd5276c9dcb36e2
clone_or_update https://github.com/opencv/opencv_contrib.git opencv_contrib e72e1715771de730c6229aaa6b848efa0d54def9
clone_or_update https://github.com/libusb/libusb.git libusb 4239bc3a50014b8e6a5a2a59df1fff3b7469543b
clone_or_update https://github.com/libuvc/libuvc.git libuvc d3318ae72a2b916ae352ad0abbbfa2c0990f455e
clone_or_update ../foxus_libjpeg-turbo.git libjpeg-turbo 384a94728cd003bbcd30a9acfe7b5dfc69c58d90
clone_or_update ../foxus_profiler.git foxus_profiler 840fda22d05d6c0851300dd2d9f6e8f31409ecd2
