curl -sL https://github.com/Josebc2336/CyberPatroit/raw/main/10periodic > /etc/apt/apt.conf.d/10periodic
curl -sL https://github.com/Josebc2336/CyberPatroit/raw/main/10periodic > /etc/apt/apt.conf.d/20auto-updgrades
sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup
echo -e "deb http://archive.ubuntu.com/ubuntu $(lsb_release -cs) main universe restricted multiverse" > /etc/apt/sources.list
echo -e "deb-src http://archive.ubuntu.com/ubuntu $(lsb_release -cs) main universe restricted multiverse " >> /etc/apt/sources.list
echo -e "deb http://security.ubuntu.com/ubuntu/ $(lsb_release -cs)-security restricted main multiverse universe" >> /etc/apt/sources.list
echo -e "deb http://archive.ubuntu.com/ubuntu $(lsb_release -cs)-updates restricted main multiverse universe" >> /etc/apt/sources.list
echo -e "deb http://archive.ubuntu.com/ubuntu $(lsb_release -cs)-backports restricted main multiverse universe" >> /etc/apt/sources.list
sudo apt update 
sudo apt upgrade -y
