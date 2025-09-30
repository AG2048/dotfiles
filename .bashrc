# .bashrc - Bash configuration file
# This file contains common aliases and environment settings

# ============================================================
# Disk Usage Aliases
# ============================================================
# Show disk usage in human-readable format
alias df='df -h'

# Show inode usage
alias di='df -i'

# ============================================================
# Directory Navigation Shortcuts
# ============================================================
# Quick directory navigation
alias u='cd ..'
alias uu='cd ../..'
alias uuu='cd ../../..'
alias uuuu='cd ../../../..'
alias uuuuu='cd ../../../../..'

# ============================================================
# Common Path Shortcuts
# ============================================================
# SSH configuration directory
export ssh="$HOME/.ssh"

# Add more common shortcuts as needed
export docs="$HOME/Documents"
export downloads="$HOME/Downloads"

# ============================================================
# Useful Aliases
# ============================================================
# List files with colors and details
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'

# Safer file operations
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Grep with color
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# ============================================================
# Additional Settings
# ============================================================
# Enable color support for ls
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
fi

# Set a colorful prompt (optional)
# PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
