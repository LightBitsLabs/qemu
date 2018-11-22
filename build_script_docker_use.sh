#!/bin/bash -x
mkdir /src
cp -r /qemu /src
cd /src/qemu/
./debian/rules clean
dpkg-source --before-build .
mv roms/SLOF roms/SLOf_b
git submodule init
git submodule update --recursive
cp -r roms/SLOF_b roms/SLOF
dpkg-buildpackage -rfakeroot -uc -b
cp ../*.deb /target
