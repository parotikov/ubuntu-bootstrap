#!/bin/bash
#установка формата времени
sudo apt-get install dconf-tools
gsettings set com.canonical.indicator.datetime custom-time-format '%a, %e %b %H:%M:%S %'
gsettings set com.canonical.indicator.datetime time-format custom