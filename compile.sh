#!/bin/bash 
set -x
make -j8 KSRC=.. USER_EXTRA_CFLAGS="-O2 -march=znver1"
xz -9ve *.ko
cp -v *.ko.xz ../tar-install/lib/modules/*/

