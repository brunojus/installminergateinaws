#!/bin/bash

sudo su

apt-get update

apt-get install libcurl4-openssl-dev git

apt-get install build-essential

Y

apt-get install autotools-dev autoconf

Y

apt-get install libcurl3 libcurl4-gnutls-dev

Y

mkdir /download

cd /download

git clone https://github.com/wolf9466/cpuminer-multi

cd cpuminer-multi

./autogen.sh

CFLAGS="-march=native" ./configure

make

make install

apt-get install screen

screen

minerd -a cryptonight -o stratum+tcp://xmr.pool.minergate.com:45560 -u brunojustin@gmail.com -p x﻿
