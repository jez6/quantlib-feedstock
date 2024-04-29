#!/bin/bash

cmake ${CMAKE_ARGS}                                     \
     -G Ninja                                           \
     -DCMAKE_BUILD_TYPE=Release                         \
     -DCMAKE_INSTALL_PREFIX=$PREFIX                     \
     -DCMAKE_INSTALL_LIBDIR=lib                         \
     -DQL_BUILD_EXAMPLES=OFF                            \
     -DQL_BUILD_BENCHMARK=OFF                           \
     $SRC_DIR

cmake install

# ./autogen.sh
# ./configure --disable-static CXXFLAGS="-O2 -g0 -Wall -Wno-unknown-pragmas -Werror" --prefix $PREFIX
# make
# make install
