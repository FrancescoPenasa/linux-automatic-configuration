#! /bin/bash
# git config
EMAIL = "email for git"
USER = "user for git "

# browser
sudo apt-get install -y firefox
sudo apt-get remove -y chromium-browser

# clean dirs
rm -rf Public/ Templates/ Videos/ Music/ Documents/ Pictures/

# sublime text 3
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - 
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.lis 
sudo apt-get update 
sudo apt-get install sublime-text

# google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb 
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm -rf google*

clear

# R
sudo apt update
sudo apt -y upgrade
sudo apt -y install r-base

# R-studio
wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.1578-amd64.deb
sudo dpkg --configure -a 
sudo apt -f -y install
sudo dpkg -i rstudio-1.2.1578-amd64.deb
sudo apt -f -y install
rm -rf rstudio*

# python3
sudo apt-get install -y jupyther-notebook
sudo apt-get install -y spyder3
sudo apt-get install -y pytho3-pip
sudo pip3 install numpy

# latex 
sudo apt-get install -y texlive
sudo apt-get install -y apt-file

# slides
sudo apt-get install libreoffice-impress

# pdfreader
sudo apt-get install -y evince
sudo apt-get remove -y atril

# git 
sudo apt-get install -y git
git config --global user.email $EMAIL
git config --global user.name $USER

# utility 
sudo apt-get -y install acpi

sudo apt-get -y autoremove 
sudo apt-get -y autoclean
sudo apt-get -y update

# personal aliases
cd 
echo 'alias battery_level="acpi"' >> .bashrc
echo 'alias pdfreader="evince"' >> .bashrc
echo 'alias search-latex="apt-file search"' >> .bashrc


# Package Control
## Markdown Editing
## Markdown Preview
## LaTeXTools