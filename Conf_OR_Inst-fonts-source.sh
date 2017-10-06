#!/bin/bash

echo "installing fonts at $PWD to ~/.fonts/"
mkdir -p ~/.fonts/adobe-fonts/source-code-pro
git clone --depth 1 --branch release https://github.com/adobe-fonts/source-code-pro.git ~/.fonts/adobe-fonts/source-code-pro
# find ~/.fonts/ -iname '*.ttf' -exec echo \{\} \;
fc-cache -f -v ~/.fonts/adobe-fonts/source-code-pro
# fc-cache -f -v ~/.fonts/adobe-fonts/source-han-serif
# fc-cache -f -v ~/.fonts/adobe-fonts/source-han-sans
echo "finished installing"
