#!/bin/bash

useradd -m -d $1$2 -s /bin/false -p $(openssl passwd -1 $3) $2
usermod -G scalesuser $2

chmod 755 $1$2

mkdir $1$2/public $1$2/backups
chown $2:scalesuser $1$2/*
