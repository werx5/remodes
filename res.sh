#!/bin/bash
    slm=$(echo "\033[31;3m")
    normal=$(echo "\033[m")
    menu=$(echo "\033[36m") #Blue
    number=$(echo "\033[33m") #yellow
    bgred=$(echo "\033[39;3m")
    fgred=$(echo "\033[32;3m")
    kbred=$(echo "\033[33;3m")
    printf "\n${kbred}-----> Kurulum ilerliyor${normal}\n"
#------------------------------------------------
# Setup Ubuntu 16.04 with xRDP via MATE-Desktop
#------------------------------------------------
#https://gist.github.com/rvido/36c6af244e3e0989df8bd30189090635 ---> is a quote

apt update
apt install xrdp -y
apt install mate-core mate-desktop-environment mate-notification-daemon -y
sed -i.bak '/fi/a #xrdp multiple users configuration \n mate-session \n' /etc/xrdp/startwm.sh -y
systemctl enable xrdp
systemctl start xrdp

    printf "\n${fgred}-----> Kurulum Tamamlandı!${normal}\n"

    printf "\n${slm}-----> Firefox Tarayıcı Yükleniyor...${normal}\n"
    sleep 2
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A6DCF7707EBC211F
apt-add-repository "deb http://ppa.launchpad.net/ubuntu-mozilla-security/ppa/ubuntu bionic main"
apt update
apt install firefox
