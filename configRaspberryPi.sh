#/bin/sh
sudo apt-get update
sudo apt-get install libasound2-dev libssl-dev libfreetype6-dev libgl1-mesa-dev

cd /usr/lib/arm-linux-gnueabihf/
sudo ln -s libSM.so.6 libSM.so
sudo ln -s libICE.so.6 libICE.so