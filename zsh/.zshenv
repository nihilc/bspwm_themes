# XDG Base dir
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
### Default Apps ###
export EDITOR="nvim"
export READER="firefox"
export TERMINAL="alacritty"
export BROWSER="firefox"
export VIDEO="mpv"
export IMAGE="sxiv"
export OPENER="xdg-open"
export PAGER="less"
export WM="bspwm"

### Fixing paths ###
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export XCURSOR_PATH=/usr/share/icons:${XDG_DATA_HOME}/icons
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc

export CARGO_HOME="$XDG_DATA_HOME"/cargo
export WINEPREFIX="$XDG_DATA_HOME"/wine


### PATH ###
export PATH="$HOME/.local/bin:$PATH"
