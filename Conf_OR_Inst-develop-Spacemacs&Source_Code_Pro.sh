#!/bin/bash

echo "installing fonts at $PWD to ~/.fonts/"
mkdir -p ~/.fonts/adobe-fonts/source-code-pro
git clone --depth 1 --branch release https://github.com/adobe-fonts/source-code-pro.git ~/.fonts/adobe-fonts/source-code-pro
# find ~/.fonts/ -iname '*.ttf' -exec echo \{\} \;
fc-cache -f -v ~/.fonts/adobe-fonts/source-code-pro
echo "finished installing"

git clone git@github.com:syl20bnr/spacemacs.git ~/.emacs.d -b develop
git clone git@github.com:erstern/dotspacemacsd.git ~/.spacemacs.d/
