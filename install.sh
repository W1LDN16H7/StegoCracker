#!/bin/bash

G="\033[1;34m[*] \033[0m"
S="\033[1;32m[+] \033[0m"

check_package() {
  dpkg -s $1$2$3 &>/dev/null
  echo -e $G"\e[1;31mChecking Dependencies....\e[0m"
  echo -e $G"\e[1;31mPlease Wait....\e[0m"

  # shellcheck disable=SC2181
  if [[ $? -eq 0 ]]; then
    echo -e $G"\e[1;31m$1 Installed\e[0m"
    echo -e $G"\e[1;31m$2 Installed\e[0m"
    echo -e $G"\e[1;31m$3 Installed\e[0m"


    #statements

  else
    echo -e $G"\e[1;31m$1 Not Installed\e[0m"
    echo -e $G"\e[1;31m$2 Not Installed\e[0m"
    echo -e $G"\e[1;31m$3 Not Installed\e[0m"


    echo -e $G"\e[1;31mInstalling....\e[0m"
    apt-get install "$1"
    apt-get install "$2"
    apt-get install "$3"


  fi

}
check_package lolcat figlet python3-pip
python3 -m pip install -r requirements.txt
echo -e "\e[0;32m$(figlet Installing Stego | lolcat) \e[0m"


sudo cp stego/StegoCracker /usr/local/bin/stego
sudo chmod +x /usr/local/bin/stego
echo -e $G"\e[0;32mInstallation Complete\e[0m"
echo -e $S"\e[0;32mRun StegoCracker by stego command from anywhere...\e[0m"
