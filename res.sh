apt update
apt install xfce4 xfce4-goodies xorg dbus-x11 x11-xserver-utils -y
apt install xrdp -y
systemctl status xrdp
adduser xrdp ssl-cert  
systemctl restart xrdp
ufw allow from 192.168.1.0/24 to any port 3389
ufw allow 3389
