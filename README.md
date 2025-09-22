# Dotfiles

A collection of carefully crafted configuration files (dotfiles) for a productive development environment. These templates provide sensible defaults and useful configurations for common development tools.

## 📁 What's Included

### Shell Configuration
- **`.bashrc`** - Bash shell configuration for interactive non-login shells
- **`.bash_profile`** - Bash configuration for login shells

### Editor Configuration  
- **`.vimrc`** - Vim editor configuration with useful defaults
- **`.config/nvim/init.vim`** - Neovim configuration with modern features

### Version Control
- **`.gitconfig`** - Git global configuration with helpful aliases and settings
- **`.gitignore_global`** - Global gitignore file for common files to exclude

### SSH Configuration
- **`.ssh/config`** - SSH client configuration for various hosts and services

## 🚀 Quick Start

### Installation

1. **Clone this repository:**
   ```bash
   git clone https://github.com/AG2048/dotfiles.git
   cd dotfiles
   ```

2. **Backup your existing dotfiles** (recommended):
   ```bash
   mkdir -p ~/dotfiles-backup
   cp ~/.bashrc ~/dotfiles-backup/ 2>/dev/null || true
   cp ~/.bash_profile ~/dotfiles-backup/ 2>/dev/null || true
   cp ~/.vimrc ~/dotfiles-backup/ 2>/dev/null || true
   cp -r ~/.config/nvim ~/dotfiles-backup/ 2>/dev/null || true
   cp ~/.gitconfig ~/dotfiles-backup/ 2>/dev/null || true
   cp ~/.gitignore_global ~/dotfiles-backup/ 2>/dev/null || true
   cp -r ~/.ssh ~/dotfiles-backup/ 2>/dev/null || true
   ```

3. **Copy or symlink the configuration files:**

   **Option A: Copy files (recommended for beginners)**
   ```bash
   cp .bashrc ~/
   cp .bash_profile ~/
   cp .vimrc ~/
   mkdir -p ~/.config/nvim
   cp .config/nvim/init.vim ~/.config/nvim/
   cp .gitconfig ~/
   cp .gitignore_global ~/
   mkdir -p ~/.ssh
   cp .ssh/config ~/.ssh/
   chmod 600 ~/.ssh/config
   ```

   **Option B: Create symbolic links (for advanced users)**
   ```bash
   ln -sf $(pwd)/.bashrc ~/
   ln -sf $(pwd)/.bash_profile ~/
   ln -sf $(pwd)/.vimrc ~/
   mkdir -p ~/.config/nvim
   ln -sf $(pwd)/.config/nvim/init.vim ~/.config/nvim/
   ln -sf $(pwd)/.gitconfig ~/
   ln -sf $(pwd)/.gitignore_global ~/
   mkdir -p ~/.ssh
   ln -sf $(pwd)/.ssh/config ~/.ssh/
   chmod 600 ~/.ssh/config
   ```

4. **Reload your shell configuration:**
   ```bash
   source ~/.bash_profile
   # or
   source ~/.bashrc
   ```

## 📋 Configuration Details

### Shell Configuration (`.bashrc` & `.bash_profile`)

**`.bashrc`** - Interactive shell configuration:
- **History settings**: Enhanced history with timestamps and better search
- **Aliases**: Useful shortcuts for common commands (`ll`, `la`, `grep`, etc.)
- **Git aliases**: Quick git commands (`gs`, `ga`, `gc`, `gp`, etc.)
- **Colored prompt**: Beautiful and informative command prompt
- **Command completion**: Enhanced bash completion
- **Path management**: Automatic addition of local bin directories

**`.bash_profile`** - Login shell configuration:
- **Environment variables**: Sets up `EDITOR`, `PAGER`, `BROWSER`
- **Development paths**: Configures paths for Node.js, Ruby, Go, Rust, Java
- **Locale settings**: UTF-8 configuration
- **Sources `.bashrc`** for interactive login shells

**Key Features:**
- 🎨 Colorized output for `ls`, `grep`, and other commands
- 📚 Improved history management with timestamps
- 🔗 Smart aliases for productivity
- 🛠️ Development environment setup
- 🔄 Sources additional local configuration files

### Editor Configuration

**`.vimrc`** - Vim configuration:
- **Basic settings**: Line numbers, syntax highlighting, indentation
- **Search enhancements**: Incremental search, smart case sensitivity
- **Key mappings**: Convenient shortcuts with space as leader key
- **File type settings**: Language-specific indentation
- **Performance optimizations**: Faster redrawing and scrolling
- **Backup management**: Persistent undo without swap files

**`.config/nvim/init.vim`** - Neovim configuration:
- **Inherits vim settings**: Sources `.vimrc` for compatibility  
- **Terminal integration**: Built-in terminal with easy navigation
- **Modern features**: True color support, live command preview
- **LSP ready**: Prepared for Language Server Protocol plugins
- **Plugin framework**: Ready for plugin manager integration

**Key Features:**
- 🎯 Space bar as leader key for custom shortcuts
- 🌈 Syntax highlighting and color schemes
- 📁 Smart file navigation and management
- 🔍 Enhanced search and replace capabilities
- ⚡ Performance optimized settings

### Git Configuration (`.gitconfig` & `.gitignore_global`)

**`.gitconfig`** - Git global settings:
- **User configuration**: Name and email (customize these!)
- **Helpful aliases**: Shortcuts for common git operations
- **Better defaults**: Improved merge, diff, and push settings
- **Color output**: Enhanced visual git command output
- **Auto-corrections**: Automatically fix common typos

**`.gitignore_global`** - Global ignore patterns:
- **OS files**: `.DS_Store`, `Thumbs.db`, temporary files
- **Editor files**: Vim swaps, VSCode, IntelliJ IDEA files
- **Development**: `node_modules`, `__pycache__`, build artifacts
- **Security**: Environment files, SSH keys, certificates

**Key Git Aliases:**
- `git st` → `git status`
- `git co` → `git checkout`
- `git cm` → `git commit -m`
- `git lg` → Beautiful one-line git log with graph
- `git unstage` → `git reset HEAD --`

### SSH Configuration (`.ssh/config`)

**`.ssh/config`** - SSH client configuration:
- **Global settings**: Connection optimization and security
- **Service configs**: Ready-to-use GitHub, GitLab, Bitbucket settings
- **Connection reuse**: Faster subsequent connections
- **Security hardening**: Modern security practices
- **Example configs**: Templates for various server types

**Key Features:**
- 🔒 Enhanced security settings
- ⚡ Connection multiplexing for speed
- 🛠️ Ready-made configs for Git hosting services
- 📝 Extensive examples and comments
- 🔧 Easy customization for your servers

## 🎛️ Customization

### Personal Configuration Files

Each configuration supports local override files for personal customizations:

- **`~/.bashrc`** can source `~/.bash_aliases` and `~/.bash_local`
- **`~/.bash_profile`** can source `~/.bash_profile_local`
- **`~/.vimrc`** can source `~/.vimrc.local`
- **`~/.config/nvim/init.vim`** can source `~/.config/nvim/init.local.vim`
- **`~/.gitconfig`** can include `~/.gitconfig.local`

### Essential Customizations

1. **Update Git configuration** in `.gitconfig`:
   ```ini
   [user]
       name = Your Actual Name
       email = your.actual.email@example.com
   ```

2. **Add SSH keys** to `.ssh/config`:
   ```
   Host github.com
       IdentityFile ~/.ssh/id_ed25519_github
   ```

3. **Create local override files** for machine-specific settings:
   ```bash
   # Example ~/.bash_local
   export CUSTOM_VAR="value"
   alias myserver="ssh user@myserver.com"
   ```

## 🔧 Advanced Usage

### Plugin Management

For **Vim/Neovim**, consider installing a plugin manager:
```bash
# vim-plug for Neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

### SSH Key Generation

Generate SSH keys for different services:
```bash
# GitHub key
ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519_github -C "your-email@example.com"

# Personal server key  
ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519_personal -C "personal-server"
```

### Git Configuration Per Repository

For project-specific git settings:
```bash
# In a specific repository
git config user.email "work-email@company.com"
git config user.name "Work Name"
```

## 🛡️ Security Considerations

- **SSH keys**: Keep private keys secure with proper permissions (`chmod 600`)
- **Git credentials**: Use SSH keys instead of passwords
- **Local files**: Don't commit personal information to public repositories
- **Permissions**: Ensure proper file permissions for sensitive configs

## 🔍 Troubleshooting

### Common Issues

1. **Permission denied for SSH config**:
   ```bash
   chmod 600 ~/.ssh/config
   chmod 700 ~/.ssh
   ```

2. **Vim configuration not loading**:
   ```bash
   # Check for syntax errors
   vim -c "source ~/.vimrc" -c "q"
   ```

3. **Git aliases not working**:
   ```bash
   # Reload git configuration
   git config --global --list
   ```

4. **Shell changes not taking effect**:
   ```bash
   # Reload shell configuration
   source ~/.bash_profile
   source ~/.bashrc
   ```

## 🤝 Contributing

Feel free to suggest improvements by:
1. Opening an issue for bugs or feature requests
2. Submitting pull requests with enhancements
3. Sharing your customizations and tips

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🙏 Acknowledgments

These configurations are inspired by best practices from the development community and various dotfiles repositories. Special thanks to all contributors who help improve these templates.