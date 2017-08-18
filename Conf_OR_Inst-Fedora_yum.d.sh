#!/bin/bash

su -c 'dnf config-manager --add-repo=http://repo.fdzh.org/FZUG/FZUG.repo'
sudo wget https://repo.fdzh.org/chrome/google-chrome-mirrors.repo -P /etc/yum.repos.d/
