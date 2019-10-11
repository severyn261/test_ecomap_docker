#!/bin/bash

pip install -r /home/ubuntu/home/workspace/test_ecomap/requirements.txt
sleep 10s
a2dissite 000-default
systemctl reload apache2
sed -i "s/ecomapIP/$(echo "$(hostname -I)" | sed 's/^2.//;s/.$//')/g" /home/ubuntu/home/workspace/test_ecomap/ecomap/etc/_ecomap.apache.conf
cp /home/ubuntu/home/workspace/test_ecomap/ecomap/etc/_ecomap.apache.conf /etc/apache2/sites-available/ecomap.conf
a2ensite ecomap
systemctl reload apache2
echo "ALL TASKS ARE OK" > /home/ubuntu/README.TXT
