#!/bin/bash

sudo su

apt-get update

apt-get install libcurl4-openssl-dev git

apt-get install build-essential -y

apt-get install autotools-dev autoconf -y

apt-get install libcurl3 libcurl4-gnutls-dev -y

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

minerd -a cryptonight -o stratum+tcp://bcn.pool.minergate.com:45560 -u brunojustin@gmail.com -p x﻿
