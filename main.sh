#!/bin/bash
#установка базовых программ
sudo apt-get install -y wget curl zsh mtr nano vim git ctags htop tmux mc pwgen
#git clone https://github.com/amix/vimrc.git ~/.vim_runtime
#sh ~/.vim_runtime/install_awesome_vimrc.sh

#установка oh-my-zsh и темы к нему
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -O https://raw.githubusercontent.com/parotikov/firstvds-vesta/master/nik.zsh-theme
mv nik.zsh-theme ~/.oh-my-zsh/themes
sed -i 's/^ZSH_THEME="robbyrussell".*/ZSH_THEME="nik"/g' ~/.zshrc 

#открыть терминал в наутилусе через контекстное меню
sudo apt-get install nautilus-open-terminal

#программа для коррекции яркости монитора ночью
sudo add-apt-repository ppa:kilian/f.lux
sudo apt-get update
sudo apt-get install fluxgui -y

#скриншотер
sudo apt-get install shutter -y

/bin/bash weather_indicator.sh
/bin/bash set_date.sh
/bin/bash lens_settings.sh
/bin/bash diodon.sh
/bin/bash composer.sh
/bin/bash keepass.sh
/bin/bash node.sh
/bin/bash skype.sh
/bin/bash sublime.sh
