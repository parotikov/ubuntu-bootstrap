wget http://get.skype.com/go/getskype-linux-beta-ubuntu-64 -O skype.deb
sudo dpkg -i skype.deb
sudo add-apt-repository ppa:rpeshkov/ppa
sudo apt-get update
sudo apt-get  install sni-qt:i386
sudo apt-get install git
git clone git://github.com/rpeshkov/skype-wrapper.git ~/bin/skype-wrapper
cd ~/bin/skype-wrapper
sudo ./install.sh unity
