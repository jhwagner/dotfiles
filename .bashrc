# Aliases
alias gs="git status"
alias ng="node-gyp"

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/opt/X11/lib/pkgconfig

# Homebrew Settings
export PATH=/usr/local/bin:$PATH

# Go Settings
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/code/go
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$GOPATH/bin

# Visual Settings
export CLICOLOR=1
export LSCOLORS=cxfxcxdxbxegedabagacad

# Brew Bash Completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
