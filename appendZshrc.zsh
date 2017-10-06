# append alias for oh-my-zsh ~/.zshrc

ZSH_THEME="ys"

# for rpm
alias in="sudo dnf install"
alias se="sudo dnf search"
alias up="sudo dnf update"

# for openSUSE
alias in="sudo zypper in"
alias se="sudo zypper se"
alias up="sudo zypper up"
alias zrm='sudo zypper rm -u'

# for deb
alias in="sudo apt-get install"
alias up="sudo apt-get update && sudo apt-get upgrade"

# for arch yaourt
alias s="yaourt -Ss"
alias S="yaourt -S"
alias Syu="yaourt -Syu"

# sh in terminal
alias diffy="diff -y --suppress-common-lines"
alias emacs="emacs -nw"
alias rbt="sudo reboot now"
alias rmrf="rm -rf"
alias shdh="sudo shutdown -h now"
alias xl="xelatex"
