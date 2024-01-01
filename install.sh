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
apt install git -y
clear
apt install build-essential -y
clear
apt install cmake -y
clear
apt install libuv1-dev -y
clear
apt install libmicrohttpd-dev -y
clear
apt install libssl-dev -y
clear
apt install libhwloc-dev -y
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
