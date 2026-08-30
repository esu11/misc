#!/bin/bash

# Execute via "sudo curl https://raw.githubusercontent.com/esu11/misc/refs/heads/main/yourls-upgrade.sh | sudo bash"

# Set variables
yourlsnew=1.10.6

wget -P /tmp https://github.com/YOURLS/YOURLS/archive/refs/tags/$yourlsnew.tar.gz
tar xzvf /tmp/$yourlsnew.tar.gz /tmp
sudo cp -R /tmp/YOURLS-$yourlsnew/* /var/www/esu11.info/
sudo chown -R www-data:www-data /var/www/esu11.info
sudo cp -R /tmp/YOURLS-$yourlsnew/* /var/www/sveagles.info/
sudo chown -R www-data:www-data /var/www/sveagles.info

sudo rm /tmp/$yourlsnew.tar.gz
sudo rm -rf /tmp/YOURLS-$yourlsnew
