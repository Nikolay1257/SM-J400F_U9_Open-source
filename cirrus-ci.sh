#!/bin/bash
sudo apt install build-essential git -y
git clone https://github.com/Nikolay1257/SM-J400F_U9_Open-source
cd SM-J400F_U9_Open-source
git clone https://github.com/LineageOS/android_prebuilts_gcc_linux-x86_aarch64_aarch64-linux-android-4.9
./build_kernel.sh
./build_kernel_halium.sh
