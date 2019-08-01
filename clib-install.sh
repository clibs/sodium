#!/bin/bash

CWD=$PWD

cd -
LWD=$PWD

if [ -z "${PREFIX}" ]; then
  PREFIX=/usr/local
fi

mkdir -p $PREFIX
cd $PREFIX
PREFIX=$PWD
cd $CWD

## make !
{
  sh autogen.sh
  ./configure --prefix=$PREFIX
  make
  make check
  make install
}
