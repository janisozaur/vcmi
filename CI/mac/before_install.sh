#!/bin/sh

brew update
brew install smpeg2 libpng freetype sdl2 sdl2_ttf sdl2_image qt5 ffmpeg ninja ccache
brew install sdl2_mixer --with-smpeg2

echo "sloppiness = pch_defines,time_macros" | sudo tee -a /usr/local/Cellar/ccache/3.4.2/etc/ccache.conf

export PATH=/usr/local/opt/ccache/libexec:$PATH
export CMAKE_PREFIX_PATH="/usr/local/opt/qt5:$CMAKE_PREFIX_PATH"
