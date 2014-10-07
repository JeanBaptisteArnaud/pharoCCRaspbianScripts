#/bin/sh
sudo apt-get update
sudo apt-get install libasound2-dev libssl-dev libfreetype6-dev libgl1-mesa-dev

sudo echo "/* GNU ld script
	Use the shared library, but some functions are only in
	the static library, so try that secondarily.	*/
OUTPUT_FORMAT(elf32-littlearm)
GROUP (../../../lib/arm-linux-gnueabihf/libpthread.so.0 ./libpthread_nonshared.a)" > /usr/lib/libpthread.so

sudo echo "/* GNU ld script
	Use the shared library, but some functions are only in
	the static library, so try that secondarily.	*/
OUTPUT_FORMAT(elf32-littlearm)
GROUP (../../../lib/arm-linux-gnueabihf/libc.so.6 ./libc_nonshared.a AS_NEEDED ( ../../../lib/arm-linux-gnueabihf/ld-linux-armhf.so.3))" > /usr/lib/libc.so


cd /usr/lib/arm-linux-gnueabihf/
sudo ln -s libSM.so.6 libSM.so
sudo ln -s libICE.so.6 libICE.so