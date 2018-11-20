#!/bin/bash

git clone git@github.com:syl20bnr/spacemacs.git ~/github/syl20bnr-spacemacs/ -b develop
# git clone git@github.com:erstern/dotspacemacsd.git ~/.spacemacs.d/
git clone git@github.com:HesperusArcher/dotspacEmacs.git ~/.spacemacs.d/
git clone git@github.com:HesperusArcher/dotemacs.d.git ~/.emacs.d/
git clone git@github.com:emacs-ess/ESS.git ~/elisps/ess/

mkdir ~/elisps/
cp -r ~/nutstore/nutbk/lazycat-company-english-helper/ ~/elisps/
git clone git@github.com:polymode/polymode.git ~/elisps/polymode/
git clone git@github.com:polymode/poly-markdown.git ~/elisps/poly-markdown/
git clone git@github.com:polymode/poly-noweb.git ~/elisps/poly-noweb/
git clone git@github.com:polymode/poly-R.git ~/elisps/poly-R/
