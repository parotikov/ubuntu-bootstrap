#/bin/bash
sudo apt-get install ctags
#sudo wget -P /etc/yum.repos.d/ http://download.opensuse.org/repositories/home:/laurentwandrebeck:/mc/CentOS_6/home:laurentwandrebeck:mc.repo
#sudo yum install mc 
mkdir ~/.vim/
mkdir ~/.vim/bundle/
mkdir ~/.fonts/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/abertsch/Menlo-for-Powerline.git
cp "Menlo-for-Powerline/Menlo for Powerline.ttf" ~/.fonts/MenloPowerline.ttf
vim +PluginInstall +qall
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf -O ~/.fonts/
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf ~/
sudo mv ~/10-powerline-symbols.conf /etc/fonts/conf.d
fc-cache -vf ~/.fonts/
sudo dpkg-reconfigure fontconfig