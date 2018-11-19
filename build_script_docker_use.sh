#!/bin/bash
cd /qemu
dpkg-buildpackage -rfakeroot -uc -b
cp /*.deb /target
