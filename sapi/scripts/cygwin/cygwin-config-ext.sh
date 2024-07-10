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

ROOT=${__PROJECT__}

REDIS_VERSION=6.0.2
MONGODB_VERSION=1.19.3
YAML_VERSION=2.2.3
IMAGICK_VERSION=3.7.0
IGBINARY_VERSION=3.2.15

if [ ! -d pool/ext ]; then
    mkdir -p pool/ext
fi

cd pool/ext

if [ ! -d $ROOT/ext/redis ]; then
    if [ ! -f redis-${REDIS_VERSION}.tgz ]; then
        wget https://pecl.php.net/get/redis-${REDIS_VERSION}.tgz
    fi
    tar xvf redis-${REDIS_VERSION}.tgz
    mv redis-${REDIS_VERSION} $ROOT/ext/redis
fi

if [ ! -d $ROOT/ext/mongodb ]; then
    if [ ! -f mongodb-${MONGODB_VERSION}.tgz ]; then
        wget https://pecl.php.net/get/mongodb-${MONGODB_VERSION}.tgz
    fi
    tar xvf mongodb-${MONGODB_VERSION}.tgz
    mv mongodb-${MONGODB_VERSION} $ROOT/ext/mongodb
fi

if [ ! -d $ROOT/ext/yaml ]; then
    if [ ! -f yaml-${YAML_VERSION}.tgz ]; then
        wget https://pecl.php.net/get/yaml-${YAML_VERSION}.tgz
    fi
    tar xvf yaml-${YAML_VERSION}.tgz
    mv yaml-${YAML_VERSION} $ROOT/ext/yaml
fi

if [ ! -d $ROOT/ext/imagick ]; then
    if [ ! -f imagick-${IMAGICK_VERSION}.tgz ]; then
        wget https://pecl.php.net/get/imagick-${IMAGICK_VERSION}.tgz
    fi
    tar xvf imagick-${IMAGICK_VERSION}.tgz
    mv imagick-${IMAGICK_VERSION} $ROOT/ext/imagick
fi

if [ ! -d $ROOT/ext/igbinary ]; then
    if [ ! -f igbinary-${IGBINARY_VERSION}.tgz ]; then
        wget https://pecl.php.net/get/igbinary-${IGBINARY_VERSION}.tgz
    fi
    tar xvf igbinary-${IGBINARY_VERSION}.tgz
    mv igbinary-${IGBINARY_VERSION} $ROOT/ext/igbinary
fi

cd $ROOT

