#!/bin/bash -e

apt-get update
apt-get install -y build-essential cmake git pkg-config unzip locate libeigen3-dev git vim
updatedb

#pip install --upgrade pip
pip install Pillow
pip install cython
pip install numpy
pip install scipy==0.13.2
pip install scikit-image==0.9.3
pip install scikit-learn==0.14.1

cd /
git clone https://github.com/seanbell/intrinsic.git intrinsic-bell
cd /intrinsic-bell/bell2014/krahenbuhl2013
make

rm -rf /var/lib/apt/lists/*



