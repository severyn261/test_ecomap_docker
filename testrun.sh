#!/bin/bash

sed -i 's/address/ecomap-db.cjc2siunmkts.us-east-2.rds.amazonaws.com/g' /home/ubuntu/home/workspace/test_ecomap/ecomap/etc/_configvars.conf
sed -i 's/portdb/3306/g' /home/ubuntu/home/workspace/test_ecomap/ecomap/etc/_configvars.conf
sed -i 's/address/ecomap-db.cjc2siunmkts.us-east-2.rds.amazonaws.com/g' /home/ubuntu/home/workspace/test_ecomap/ecomap/etc/db.conf
sed -i 's/portdb/3306/g' /home/ubuntu/home/workspace/test_ecomap/ecomap/etc/db.conf
sed -i 's/address/ecomap-db.cjc2siunmkts.us-east-2.rds.amazonaws.com/g' /home/ubuntu/home/workspace/test_ecomap/ecomap/db/ecomap/dump.sh
sed -i 's/portdb/3306/g' /home/ubuntu/home/workspace/test_ecomap/ecomap/db/ecomap/dump.sh
sed -i 's/username/ecomap/g' /home/ubuntu/home/workspace/test_ecomap/ecomap/db/ecomap/dump.sh
sed -i 's/userpass/135790ecomap/g' /home/ubuntu/home/workspace/test_ecomap/ecomap/db/ecomap/dump.sh
sed -i 's/dbname/ecomap_db/g' /home/ubuntu/home/workspace/test_ecomap/ecomap/etc/_configvars.conf
sed -i 's/dbname/ecomap_db/g' /home/ubuntu/home/workspace/test_ecomap/ecomap/etc/db.conf
sed -i 's/dbname/ecomap_db/g' /home/ubuntu/home/workspace/test_ecomap/ecomap/db/ecomap/dump.sh
sed -i "s/ecomapIP/$(echo "$(hostname -I)" | sed 's/^2.//;s/.$//')/g" /home/ubuntu/home/workspace/test_ecomap/ecomap/etc/_ecomap.apache.conf
pip install -r /home/ubuntu/home/workspace/test_ecomap/requirements.txt
