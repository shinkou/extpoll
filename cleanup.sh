#!/bin/sh

BASEDIR=$(readlink -f $(dirname ${0}))
cd "${BASEDIR}"

make -k distclean > /dev/null 2>&1
find ./ -name Makefile.in -exec rm -f {} \;
rm -rf \
	./COPYING \
	./INSTALL \
	./aclocal.m4 \
	./autom4te.cache \
	./configure \
	./install-sh \
	./missing \
