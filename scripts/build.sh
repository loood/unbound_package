#!/bin/bash
set -e -x

wget \
	http://archive.ubuntu.com/ubuntu/pool/main/u/unbound/unbound_1.18.0-2ubuntu1.dsc \
	http://archive.ubuntu.com/ubuntu/pool/main/u/unbound/unbound_1.18.0.orig.tar.gz \
	http://archive.ubuntu.com/ubuntu/pool/main/u/unbound/unbound_1.18.0-2ubuntu1.debian.tar.xz 

dpkg-source -x *.dsc

cd unbound-*

debuild -b -uc -us

cd .. && mkdir -p /${OUTPUT_DIR}
cp *.deb /${OUTPUT_DIR}
