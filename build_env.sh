# base env
sudo add-apt-repository universe 
sudo apt-get update 
sudo apt-get install python3-pip
apt-get update && apt-get install -y \
autoconf \
automake \
bzip2 \
g++ \
git \
gstreamer1.0-plugins-good \
gstreamer1.0-tools \
gstreamer1.0-pulseaudio \
gstreamer1.0-plugins-bad \
gstreamer1.0-plugins-base \
gstreamer1.0-plugins-ugly \
libatlas3-base \
libgstreamer1.0-dev \
libtool-bin \
make \
python2.7 \
python3 \
python-yaml \
python-simplejson \
python-gi \
subversion \
wget \
build-essential \
python-dev-is-python2 \
sox \
zlib1g-dev && \
apt-get clean autoclean && \
apt-get autoremove -y && \
pip3 install ws4py==0.3.2 && \
pip3 install tornado==4.5.3 && \
ln -s /usr/bin/python2.7 /usr/bin/python ; ln -s -f bash /bin/sh

# cuda
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-ubuntu1804.pin
sudo mv cuda-ubuntu1804.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/11.2.0/local_installers/cuda-repo-ubuntu1804-11-2-local_11.2.0-460.27.04-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1804-11-2-local_11.2.0-460.27.04-1_amd64.deb
sudo apt-key add /var/cuda-repo-ubuntu1804-11-2-local/7fa2af80.pub
sudo apt-get update
sudo apt-get -y install cuda

# gcc for cuda
sudo apt install gcc-7 g++-7
sudo ln -s /usr/bin/gcc-7 /usr/local/cuda/bin/gcc
sudo ln -s /usr/bin/g++-7 /usr/local/cuda/bin/g++