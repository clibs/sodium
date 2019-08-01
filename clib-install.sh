#!/bin/bash

if [ -z "${PREFIX}" ]; then
  PREFIX=/usr/local
fi

## make !
{
  sh autogen.sh
  ./configure
  make
  make check
  make install
}
