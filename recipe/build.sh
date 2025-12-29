#!/bin/bash

mkdir build
cd build

cmake ${CMAKE_ARGS} ..
make -j${CPU_COUNT}
make install

mv ${PREFIX}/bin/codesign ${PREFIX}/bin/sigtool-codesign
ln -sf ${PREFIX}/bin/sigtool-codesign ${PREFIX}/bin/codesign
