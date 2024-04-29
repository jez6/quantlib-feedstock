#!/bin/bash

mkdir -p build_
cd build_

cmake ${CMAKE_ARGS}                     \
     -G Ninja                           \
     -DCMAKE_BUILD_TYPE=Release         \
     -DCMAKE_INSTALL_PREFIX=$PREFIX     \
     -DQL_BUILD_EXAMPLES=OFF            \
     -DQL_BUILD_BENCHMARK=OFF           \
     -S ..                              \
     -B .

cmake --build . -- install
