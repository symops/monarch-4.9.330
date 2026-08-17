#!/bin/bash
make menuconfig
cp .config ./arch/arm64/configs/monarch_defconfig
