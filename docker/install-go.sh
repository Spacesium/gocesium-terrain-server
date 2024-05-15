#!/bin/sh

##
# Install the latest stable release of Go
#
# See <https://golang.org/doc/install/source>
#

export GOROOT_BOOTSTRAP=/usr/local/go

cd /usr/local/src || exit 1
git clone https://go.googlesource.com/go goroot || exit 1
cd goroot || exit 1
git checkout release-branch.go1.4 || exit 1
cd src || exit 1
./all.bash || exit 1
ln -s /usr/local/src/go/bin/go* /usr/local/bin/ || exit 1
