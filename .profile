# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
#if [ -n "$BASH_VERSION" ]; then
#    # include .bashrc if it exists
#    if [ -f "$HOME/.bashrc" ]; then
#	. "$HOME/.bashrc"
#    fi
#fi
# .profile
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
#. "$HOME/.cargo/env"

if [ -e /home/kayode/.nix-profile/etc/profile.d/nix.sh ]; then . /home/kayode/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

export XDG_DATA_DIRS=$HOME/.nix-profile/share/:$HOME/.share:"${XDG_DATA_DIRS:-/usr/share/}"
export QT_STYLE_OVERRIDE=kvantum
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export LESSHISTFILE=-
export BIB=$HOME/Documentos/bib.bib
export TERMINAL=st
export EDITOR=nvim VISUAL=nvim
export SDCV_PAGER='less --quit-if-one-screen -RX'
export PATH=$PATH:/usr/local/go/bin
export LC_ALL=C.utf8
export NVM_DIR="$HOME/.nvm"

# Start graphical server on user's current tty if not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg >/dev/null 2>&1 && exec startx "$XINITRC"

if [ -f ~/.bashrc ] ; then
	. ~/.bashrc
fi
