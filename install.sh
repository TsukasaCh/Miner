#! /bin/bash

clear
echo -e "\033[32mUpdating Dependencies\033[0m"
sleep 1
apt update
apt upgrade -y
sleep 1
clear
echo -e "\033[32mInstalling Package\033[0m"
sleep 1
apt install git
clear
apt install build-essential
clear
apt install cmake
clear
apt install libuv1-dev
clear
apt install libmicrohttpd-dev
clear
apt install libssl-dev
clear
apt install libhwloc-dev
echo -e "\033[32mDependencies and all packages successfully installed\033[0m"
sleep 2
echo -e "\033[32mMembuat Directory Miner...\033[0m"
mkdir bot
cd bot
echo -e "\033[32mCloning Xmrig Repository\033[0m"
git clone https://github.com/xmrig/xmrig.git
echo -e "\033[32mChanging Directory to xmrig\033[0m"
cd xmrig
echo -e "\033[32mMake Build Essential..\033[0m"
mkdir build
cd build
cmake ..
sleep 1
make
sleep 2
echo -e "\033[32mxmrig successfully installed\033[0m"