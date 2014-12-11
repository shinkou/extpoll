#!/bin/sh

BASEDIR=$(readlink -f $(dirname ${0}))
cd "${BASEDIR}"

. ./cleanup.sh
aclocal \
&& autoconf \
&& automake -ac
