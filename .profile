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
export BIB=$HOME/Documentos/bib.bib
export TERMINAL=st
export EDITOR=nvim VISUAL=nvim
export SDCV_PAGER='less --quit-if-one-screen -RX'
export PATH=$PATH:/usr/local/go/bin
export LC_ALL=C.utf8
export NVM_DIR="$HOME/.nvm"
export ANDROID_USER_HOME="$XDG_DATA_HOME"/android
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export ELINKS_CONFDIR="$XDG_CONFIG_HOME"/elinks
#export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GOPATH="$XDG_DATA_HOME"/go
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export MBSYNCRC="$XDG_CONFIG_HOME"/isync/mbsyncrc
export NPM_CONFIG_INIT_MODULE="$XDG_CONFIG_HOME"/npm/config/npm-init.js
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME"/npm
export NPM_CONFIG_TMP="$XDG_RUNTIME_DIR"/npm
export NVM_DIR="$XDG_DATA_HOME"/nvm
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
export PYTHONSTARTUP="$XDG_CONFIG_HOME"/python/pythonrc
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc
export W3M_DIR="$XDG_DATA_HOME"/w3m
export WINEPREFIX="$XDG_DATA_HOME"/wine
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export ERRFILE="$XDG_CACHE_HOME/X11/xsession-errors"
export LESSHISTFILE="XDG_DATA_HOME/lesshst"

# Start graphical server on user's current tty if not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg >/dev/null 2>&1 && exec startx "$XINITRC"

if [ -f ~/.bashrc ] ; then
	. ~/.bashrc
fi
