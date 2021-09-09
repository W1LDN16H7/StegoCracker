#!/bin/bash

G="\033[1;34m[*] \033[0m"
S="\033[1;32m[+] \033[0m"

check_package() {
  # if os is debian based
  if [ -f /etc/debian_version ]; then
    # if package is not installed
    dpkg -s $1$2$3 &>/dev/null
  elif [ -f /etc/redhat-release ]; then
    # if package is not installed
    rpm -q $1$2$3 &>/dev/null
  fi
  


    

  echo -e $G"\e[1;31mChecking Dependencies....\e[0m"
  echo -e $G"\e[1;31mPlease Wait....\e[0m"

  if [ $? -eq 0 ]; then
    echo -e $S"\e[1;32m$1$2$3 is installed\e[0m"
  else
    echo -e $S"\e[1;31m$1$2$3 is not installed\e[0m"
    echo -e $G"\e[1;31mInstalling $1$2$3....\e[0m"

    # if os is debian based
    if [ -f /etc/debian_version ]; then
      apt-get install $1$2$3 -y
    elif [ -f /etc/redhat-release ]; then
      dnf install $1$2$3 -y
    fi

  fi
}


check_package lolcat figlet python3-pip
python3 -m pip install -r requirements.txt
echo -e "\e[0;32m$(figlet Installing Stego | lolcat) \e[0m"


sudo cp stego/StegoCracker /usr/local/bin/stego
sudo chmod +x /usr/local/bin/stego
echo -e $G"\e[0;32mInstallation Complete\e[0m"
echo -e $S"\e[0;32mRun StegoCracker by stego command from anywhere...\e[0m"
