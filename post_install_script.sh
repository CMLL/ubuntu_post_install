#!/bin/bash

# Bash Install Script to automatically configure a Ubuntu fresh install.

# Get the current username for non administrator tasks
USER="cllamach"
echo "Set the user for non administrative tasks: $USER"

# Update and upgrade the system
apt-get -y update
apt-get -y upgrade

# Install available packages.
apt-get -y install vim git mercurial vlc firefox chromium-browser htop \
    python-pip i3 zsh wget make build-essential libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev

# Allowing user to change shell without password
sed -i "5i # This allows user belonging to chsh group change shell without password."\
    /etc/pam.d/chsh
sed -i "6i auth sufficient pam_wheel.so trust group=chsh" /etc/pam.d/chsh

# Creating group chsh
groupadd chsh

# Adding user to group
usermod -a -G chsh $USER

# Configure zsh with oh-my-zsh
sudo -u $USER sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Setting zsh as default shell
sudo -u $USER chsh -s /bin/zsh

# Installing pyenv
sudo -u $USER sh -c "$(wget https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer -O -)"
echo "PATH=\$HOME/.pyenv/bin:\$PATH" >> $HOME/.zshrc
echo "eval \"\$(pyenv init -)\"" >> $HOME/.zshrc
echo "eval \"\$(pyenv virtualenv-init -)\"" >> $HOME/.zshrc
