#!/bin/bash

export ARCH=arm64
#YOU CAN DOWNLOAD CROSS COMPILER FROM https://github.com/LineageOS/android_prebuilts_gcc_linux-x86_aarch64_aarch64-linux-android-4.9 
export CROSS_COMPILE=$(pwd)/android_prebuilts_gcc_linux-x86_aarch64_aarch64-linux-android-4.9/bin/aarch64-linux-android-
export ANDROID_MAJOR_VERSION=q

make exynos7570-j4lte-halium_defconfig
make -j2
cp arch/arm64/boot/Image kernel-halium.bin
make mrproper
