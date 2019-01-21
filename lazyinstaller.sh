#!bin/bash

#Define colors...

RED=`tput bold && tput setaf 1`
GREEN=`tput bold && tput setaf 2`
YELLOW=`tput bold && tput setaf 3`
BLUE=`tput bold && tput setaf 4`
NC=`tput sgr0`

function RED(){
        echo -e "\n${RED}${1}${NC}"
}
function GREEN(){
        echo -e "\n${GREEN}${1}${NC}"
}
function YELLOW(){
        echo -e "\n${YELLOW}${1}${NC}"
}
function BLUE(){
        echo -e "\n${BLUE}${1}${NC}"
}

# Check root...
if [ $UID -ne 0 ]
then
        RED "You must run this script as root!" && echo
        exit
fi

BLUE "Updating repositories..."
sudo apt update

BLUE "Installing git..."
sudo apt install -y git

BLUE "Installing Sublime Text..." # according to https://www.sublimetext.com/docs/3/linux_repositories.h$
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install -y apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text$
sudo apt-get update
sudo apt-get install -y sublime-text

BLUE "Installing pip..."
sudo apt-get install -y python-pip

BLUE "Installing exiftool..."
sudo apt-get install -y exiftool

BLUE "Installing Wireshark..."
sudo apt-get install -y wireshark

BLUE "Installing python-requests..."
pip install requests

BLUE "Installing Binwalk..."
sudo apt install -y binwalk

BLUE "Installing foremost..."
sudo apt install -y foremost

BLUE "Installing Tesseract..."
sudo apt install -y tesseract-ocr

BLUE "Installing foremost..."
sudo apt install -y foremost

BLUE "Installing hexedit..."
sudo apt install -y hexedit     

BLUE "Installing zbarimg..."
sudo apt install -y zbar-tools  

BLUE "Installing Virtualbox..."
sudo apt install -y virtualbox-qt

BLUE "Installing Oracle Java 8..."
echo "" | sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer

BLUE "Downloading stegsolve.jar..."
wget "http://www.caesum.com/handbook/Stegsolve.jar" -O "stegsolve.jar"
chmod +x "stegsolve.jar"

BLUE "Installing unrar..."
sudo apt install -y unrar

BLUE "Installing steghide..."
sudo apt install -y steghide

BLUE "Installing GIMP..."
sudo apt install -y gimp

BLUE "Installing Snap..."
sudo apt install -y snap

BLUE "Installing Discord..."
sudo snap install discord

BLUE "Installing Wine..."
sudo apt install -y wine-stable

BLUE "Installing vokoscreen..."
sudo apt install -y vokoscreen

BLUE "Installing tcpflow..."
sudo apt install -y tcpflow

BLUE "Installing sqlmap..."
sudo apt install -y sqlmap

RED "Installed Successful."
