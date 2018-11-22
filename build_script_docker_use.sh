#!/bin/bash
mkdir /src
cp -r /qemu /src
cd /src/qemu
./debian/rules clean
git submodule init
git submodule update --recursive
mv .git .g
dpkg-buildpackage -rfakeroot -uc -b
cp ../*.deb /target
