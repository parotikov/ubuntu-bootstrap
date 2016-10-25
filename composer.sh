#!/bin/bash
sudo apt-get install php5-cli php5-curl -y
cd ~
php -r "readfile('https://getcomposer.org/installer');" > composer-setup.php
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer
echo 'export PATH="$PATH:$HOME/.composer/vendor/bin"' >> ~/.zshrc
echo 'export PATH="$PATH:$HOME/.config/composer/vendor/bin"' >> ~/.zshrc
echo 'alias pa="php artisan"' >> ~/.zshrc

composer global require "hirak/prestissimo:^0.3"
composer global require "squizlabs/php_codesniffer=*"
composer global require phpmd/phpmd
composer global require friendsofphp/php-cs-fixer

