# ~/.bash_profile: executed by bash(1) for login shells.
# See /usr/share/doc/bash/examples/startup-files for examples.

# The default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# Source .bashrc if it exists and we're running bash
if [ -n "$BASH_VERSION" ]; then
    # Include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# Environment variables for login shells
export EDITOR="vim"
export VISUAL="$EDITOR"
export PAGER="less"
export BROWSER="firefox"

# Language and locale settings
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Less configuration
export LESS="-R -M"
export LESSHISTFILE="-"

# History settings for login shells
export HISTTIMEFORMAT="%F %T "
export HISTIGNORE="ls:ll:la:cd:pwd:exit:clear:history"

# Development environment variables
export PYTHONDONTWRITEBYTECODE=1
export PYTHONUNBUFFERED=1

# Node.js settings
if [ -d "$HOME/.npm-global" ]; then
    export PATH="$HOME/.npm-global/bin:$PATH"
    export NPM_CONFIG_PREFIX="$HOME/.npm-global"
fi

# Ruby settings
if [ -d "$HOME/.gem/ruby" ]; then
    export PATH="$HOME/.gem/ruby/bin:$PATH"
fi

# Go settings
if [ -d "$HOME/go" ]; then
    export GOPATH="$HOME/go"
    export PATH="$GOPATH/bin:$PATH"
fi

# Rust settings
if [ -d "$HOME/.cargo" ]; then
    export PATH="$HOME/.cargo/bin:$PATH"
fi

# Java settings
if [ -n "$JAVA_HOME" ] && [ -d "$JAVA_HOME" ]; then
    export PATH="$JAVA_HOME/bin:$PATH"
fi

# Load machine-specific profile if it exists
if [ -f "$HOME/.bash_profile_local" ]; then
    . "$HOME/.bash_profile_local"
fi