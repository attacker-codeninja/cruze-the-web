#!/bin/bash
read -p 'This script will only some tools and you have to manually check all the required tools installed or not, continue to installation? y/n'  -n 1 -r
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi

if [[ -z "$GOPATH" ]];then
                echo "You don't have Golang installed, please install it."
                echo "https://golang.org/dl/"
                echo "Once Installed, add Go to your path by these commands."
                echo 'export GOPATH=$HOME/go	>> ~/.bash_profile'
				echo 'export PATH=$GOPATH/bin:$PATH >> ~/.bash_profile'
fi

# Tools
mkdir -p ~/tools
cd ~/tools

# install aquatone
echo "Installing Aquatone"
go get github.com/michenriksen/aquatone
sudo ln -s ~/go/bin/aquatone /usr/bin/
echo "done Installing Aquatone"


#install assetfinder
echo "Installing Assetfinder"
go get -u github.com/tomnomnom/assetfinder
sudo ln -s ~/go/bin/assetfinder /usr/bin/
echo "done Installing Assetfinder"

#install httprobe
echo "Installing Httprobe"
go get -u github.com/tomnomnom/httprobe
sudo ln -s ~/go/bin/httprobe /usr/bin/
echo "done Installing Httprobe"

#install waybackurls
echo "Installing Waybackurls"
go get github.com/tomnomnom/waybackurls
sudo ln -s ~/go/bin/waybackurls /usr/bin/
echo "done Installing Waybackurls"

#install gf
echo "Installing gf"
go get -u github.com/tomnomnom/gf
sudo ln -s ~/go/bin/gf /usr/bin/
git clone https://github.com/1ndianl33t/Gf-Patterns
mkdir ~/.gf
cp  ~/tools/Gf-Patterns/*.json ~/.gf
echo "done Installing gf"

echo "installing unfurl"
go get -u github.com/tomnomnom/unfurl 
sudo ln -s ~/go/bin/unfurl /usr/bin/
echo "done installing unfurl"

echo "installing ffuf"
go get github.com/ffuf/ffuf
sudo ln -s ~/go/bin/ffuf /usr/bin/
echo "done installing ffuf"

echo "installing dirsearch"
git clone https://github.com/maurosoria/dirsearch.git
cd ~/tools/
echo "done installing dirsearch"

echo "installing sqlmap"
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
cd ~/tools/
echo "done installing sqlmap"

echo "installing hakrawler"
go get github.com/hakluke/hakrawler
sudo ln -s ~/go/bin/hakrawler /usr/bin/
echo "done installing hakrawler"

echo "installing wafwoof"
git clone https://github.com/EnableSecurity/wafw00f.git
cd ~/tools/wafw00f/
python setup.py install
echo "done installing wafoof"

echo "installing Arjun"
git clone https://github.com/s0md3v/Arjun.git
echo "done installing Arjun"

echo "instaling subfinder"
go get -v github.com/projectdiscovery/subfinder/cmd/subfinder
sudo ln -s ~/go/bin/subfinder /usr/bin/

echo "Don't forget to install gau"
echo https://github.com/lc/gau/releases/
echo tar xvf gau_1.0.2_linux_amd64.tar.gz
echo mv gau ~/tools/
echo sudo ln -s ~/tools/gau /usr/bin

echo "instaling Amass"
go get -v github.com/OWASP/Amass/v3/...
sudo ln -s ~/go/bin/amass /usr/bin/


echo "if you want download full seclists or download raft folder which is i use mostly."
echo "git clone https://github.com/danielmiessler/SecLists"



echo -e "\n\n\nDone! All tools are set up in ~/tools\n\n"
ls -la
