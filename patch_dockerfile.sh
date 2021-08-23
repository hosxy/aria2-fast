#!/usr/bin/bash

sed -i 's/i686-w64-mingw32/x86_64-w64-mingw32/' Dockerfile.mingw
sed -i 's/git clone/git clone -b release-1.36.0/' Dockerfile.mingw
sed -i 's#cd aria2#cd aria2 \&\& curl -L -o aria2-fast.patch https://raw.githubusercontent.com/hosxy/aria2-fast/master/aria2-fast.patch \&\& patch -Np1 < ./aria2-fast.patch#' Dockerfile.mingw
