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
# configure sublime text 3
wget https://packagecontrol.io/Package%20Control.sublime-package 
mv ~/Downloads/Package\ Control.sublime-package ~/.config/sublime-text-3/Installed\ Packages/Package\ Control.sublime-package
cd ~/.config/sublime-text-3/Packages/User
rm -rf Package Control.sublime-settings
echo "{
	"bootstrapped": true,
	"in_process_packages":
	[
	],
	"installed_packages":
	[	"AutoFileName",
        "BracketHighlighter",
		"LaTeX-cwl",
		"LaTeXTools",
		"LaTeXYZ",
		"MarkdownEditing",
		"MarkdownPreview",
		"Package Control",
		"Python Improved",
		"Theme - Soda"
	]
}
" >> Package Control.sublime-settings
cd 

# google chrome
# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb 
# sudo dpkg -i google-chrome-stable_current_amd64.deb
# rm -rf google*

clear

# R
sudo apt update
sudo apt -y upgrade
sudo apt -y install r-base

# R-studio
sudo apt-get install -y gdebi-core
wget https://download2.rstudio.org/server/bionic/amd64/rstudio-server-1.3.1093-amd64.deb
sudo gdebi rstudio-server-1.3.1093-amd64.deb
rm -rf rstudio*

# python3
sudo apt-get install -y jupyther-notebook
sudo apt-get install -y spyder3
sudo apt-get install -y python3-pip
sudo pip3 install numpy

# latex 
sudo apt-get install -y texlive
sudo apt-get install -y apt-file

# slides
# sudo apt-get install -y libreoffice-impress
sudo apt-get install -y libreoffice

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

# nodejs
sudo apt-get install curl
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install nodejs

# snap
sudo apt-get install snapd

# personal aliases
cd 
echo 'alias battery_level="acpi"' >> .bashrc
echo 'alias pdfreader="evince"' >> .bashrc
echo 'alias search-latex="apt-file search"' >> .bashrc


# Package Control
## Markdown Editing
## Markdown Preview
## LaTeXTools
