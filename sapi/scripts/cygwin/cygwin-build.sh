#!/usr/bin/env bash

set -exu
__DIR__=$(
  cd "$(dirname "$0")"
  pwd
)
__PROJECT__=$(
  cd ${__DIR__}/../../../
  pwd
)
cd ${__PROJECT__}

mkdir -p bin/.libs
mkdir -p /usr/lib/php/extensions/no-debug-non-zts-20230831

sed -i 's/^#define PHP_EXTENSION_DIR.*$/#define PHP_EXTENSION_DIR       "\/usr\/lib\/php\/extensions\/no-debug-non-zts-20230831"/' main/build-defs.h
sed -i '/^\s*"\s*$/d' main/build-defs.h

# export LDFLAGS="-all-static"
make -j $(nproc)
./bin/swoole-cli -v
