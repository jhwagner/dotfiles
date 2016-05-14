# Aliases
alias gs="git status"
alias ng="node-gyp"

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/opt/X11/lib/pkgconfig

# Homebrew Settings
export PATH=/usr/local/bin:$PATH

# Visual Settings
export CLICOLOR=1
export LSCOLORS=cxfxcxdxbxegedabagacad

# Brew Bash Completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
