#!/bin/bash

date=$(date +"%d.%m.%Y.%H.%M.%S")

DIR="./WD/$date/"

#./xbuild.sh clean
./xbuild.sh build
pigz -11 ./arch/arm64/boot/sata.uImage
mv ./arch/arm64/boot/sata.uImage.gz ./arch/arm64/boot/sata.uImage
mkdir -p $DIR
cp -r ./arch/arm64/boot/* $DIR
cp ./.config $DIR
cp ./drivers/usb/storage/usb-storage.ko $DIR 
cp ./drivers/usb/storage/uas.ko $DIR
cp ./drivers/phy/phy-rtk-sata.ko $DIR
