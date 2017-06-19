#!/bin/bash

# backup the data of mysql database
sudo systemctl stop mysqld
sudo rm -rf /data_bak/mysql/*
sudo cp -rf /var/lib/mysql/* /data_bak/mysql/
sudo systemctl start mysqld
