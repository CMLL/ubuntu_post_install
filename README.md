# Bash script to basically configure Ubuntu after a fresh install.

### Usage:

sudo bash post_install_script.sh

Enter your username and done.

### What it does:

1- Add spotify and webupd8team repository and ppa.
2- Update and upgrade the system.
3- Install several packages:

  - Vim
  - Git
  - Mercurial
  - Vlc
  - Firefox
  - Htop
  - i3
  - Pip
  - Zsh
  - Wget
  - Curl
  - Spotify
  - Sublime Text
  
Also install dependencies to install Python versions using pyenv.

4- Modifies the /etc/pam.d/chsh file to allow use change its shell without password.
5- Install oh-my-zsh.
6- Set zsh as default shell.
7- Install and activate pyenv.
8- Installs Python 3.4.3 and 2.7.9.

Inspiration for project came from:

- [Peter Legierski](http://blog.self.li/post/74294988486/creating-a-post-installation-script-for-ubuntu)

Github repositories used:
 - [Oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
 
 - [Pyenv](https://github.com/yyuu/pyenv-installer)
