#/bin/sh
source config.sh

#fetch Raspberry Tool
git clone https://github.com/raspberrypi/tools.git
cd tools
git checkout 9c3d7b6ac692498dd36fec2872e0b55f910baac1 .
cd $PHAROCROSSROOT

#Install asasm
wget https://ci.inria.fr/pharo-contribution/view/ARM-Tools/job/asasm/lastSuccessfulBuild/artifact/asasm
sudo mv asasm /usr/bin/asasm

#Create Pharo Image
git clone https://github.com/pharo-project/pharo-vm
cd pharo-vm/image/
sh newImage.sh
cd $PHAROCROSSROOT
mkdir /usr/lib/

#Now we will config the raspberry pi
ssh -l pi ${IPRASPBERRYPI} "${RASPBERRYPISCRIPT}"


