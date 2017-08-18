# append alias for oh-my-zsh ~/.zshrc

# for rpm
alias in="sudo dnf install"
alias up="sudo dnf update"

# for openSUSE
alias in="sudo zypper in"
alias up="sudo zypper up"

# for deb
alias in="sudo apt-get install"
alias up="sudo apt-get update && sudo apt-get upgrade"

# for arch yaourt
alias s="yaourt -Ss"
alias S="yaourt -S"

# rpm&deb
alias diffy="diff -y --suppress-common-lines"
alias emacs="emacs -nw"
alias rbt="sudo reboot now"
alias rmrf="rm -rf"
alias shdh="sudo shutdown -h now"
