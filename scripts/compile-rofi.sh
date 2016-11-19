#!/bin/bash

echo -e "\n\nRemove installed version"
sudo apt-get remove -y rofi

echo -e "\n\nInstall build dependencies"
sudo apt-get install -y autoconf automake make libtool xutils-dev libpango1.0-dev libcairo2-dev libstartup-notification0-dev libxcb-icccm4-dev libxcb-util0-dev libxcb-xinerama0-dev libxcb-xkb-dev libxcb1-dev libxkbcommon-dev libxkbcommon-x11-dev libxcb-ewmh-dev

echo -e "\n\nInstall XCB Util XRM"
(
  git clone --recursive https://github.com/Airblader/xcb-util-xrm.git && \
  cd xcb-util-xrm && \
  ./autogen.sh --prefix=/usr && \
  make && \
  sudo make install
)

echo -e "\n\nInstall rofi"
(
  git clone --recursive https://github.com/DaveDavenport/rofi.git && \
  cd rofi  && \
  git submodule update --init  && \
  autoreconf -i && \
  mkdir build  && \
  cd build  && \
  ../configure --enable-drun  && \
  make  && \
  sudo make install
)

echo -e "\n\nUninstall rofi"
