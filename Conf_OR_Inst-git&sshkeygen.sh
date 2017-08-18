#!/bin/bash

git config --global user.name "Yuanchen Xie"
git config --global user.email "yuanchen.gm@gmail.com"

ssh-keygen -t rsa -C "yuanchen.gm@gmail.com"

cat ~/.ssh/id_rsa.pub
