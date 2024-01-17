#!/bin/bash
set -e -x

sed -i 's/# deb-src/deb-src/g' /etc/apt/sources.list

apt-get update

apt-get install -y \
	build-essential \
	debhelper \
	devscripts \
	wget

apt-get install -y \
	dh-apparmor \
	libfstrm-dev \
	libhiredis-dev \
	libprotobuf-c-dev \
	libpython3-dev \
	libsystemd-dev \
	nettle-dev \
	pkg-config \
	protobuf-c-compiler \
	python3-dev

apt-get build-dep -y \
	unbound
