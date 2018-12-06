#!/bin/bash

# git clone git@github.com:syl20bnr/spacemacs.git ~/emacsdirs/syl20bnr-spacemacs/ -b develop
git clone git@github.com:HesperusArcher/dotemacs.d.git ~/.emacs.d/
git clone git@github.com:HesperusArcher/dotspacEmacs.git ~/.spacemacs.d/
cd ~/.emacs.d/
git submodule update --init --recursive
cd ~/.emacs.d/modules/syl20bnr-spacemacs/
git checkout develop
