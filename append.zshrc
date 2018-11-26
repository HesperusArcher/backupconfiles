# append alias for oh-my-zsh ~/.zshrc

# ZSH_THEME="avit"
# ZSH_THEME="bira"
# ZSH_THEME="mortalscumbag"
ZSH_THEME="ys"

plugins=(
    # archlinux
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

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
alias Syua="yaourt -Syua"
alias yR="yaourt -Rns"

# sh in terminal
alias bb="bibtex"
alias diffy="diff -y --suppress-common-lines"
alias emacs="emacs -nw"
alias ipy="/opt/anaconda/bin/ipython"
alias ipython="/opt/anaconda/bin/ipython"
alias rbt="sudo reboot now"
alias rmrf="rm -rf"
alias shdh="sudo shutdown -h now"
alias xx="xelatex"

# c dir
alias fcitxrime="cd ~/.config/fcitx/rime/"
alias rimestella="cd ~/.config/fcitx/rime/sync/stella/"
