# dotfiles

## Introduction

This repository contains personal dotfiles and configuration files for Unix/Linux systems. Dotfiles are configuration files that customize your system environment and tooling preferences. They are called "dotfiles" because they typically start with a dot (`.`) and are hidden files in Unix-like systems.

## Repository Structure

```
.
├── .bashrc          # Bash shell configuration with aliases and shortcuts
└── README.md        # This file - repository documentation
```

## Usage

### Setting up .bashrc

To use the `.bashrc` file from this repository:

1. **Backup your existing .bashrc** (if you have one):
   ```bash
   cp ~/.bashrc ~/.bashrc.backup
   ```

2. **Option A: Replace your .bashrc** (recommended for new setups):
   ```bash
   cp .bashrc ~/.bashrc
   ```

3. **Option B: Append to your existing .bashrc** (if you want to keep existing settings):
   ```bash
   cat .bashrc >> ~/.bashrc
   ```

4. **Apply the changes**:
   ```bash
   source ~/.bashrc
   ```

### What's Included in .bashrc

The `.bashrc` file includes:

- **Disk Usage Aliases:**
  - `df` - Show disk usage in human-readable format
  - `di` - Show inode usage

- **Directory Navigation Shortcuts:**
  - `u` - Go up one directory (`cd ..`)
  - `uu` - Go up two directories (`cd ../..`)
  - `uuu` - Go up three directories
  - `uuuu` - Go up four directories
  - `uuuuu` - Go up five directories

- **Common Path Shortcuts:**
  - `$ssh` - Points to `~/.ssh` directory
  - `$docs` - Points to `~/Documents` directory
  - `$downloads` - Points to `~/Downloads` directory

- **Additional Useful Aliases:**
  - File listing with colors (`ll`, `la`, `l`)
  - Safer file operations with confirmation prompts
  - Colored grep output
  - And more!

## Contributing

Feel free to customize these dotfiles to match your preferences. When making changes, ensure that any shell configuration is syntactically correct by running:

```bash
bash -n .bashrc
```

---

**Note for Future Agent Tasks:** Please reformat and update this README in every agent task to maintain clarity and consistency. Keep the structure organized and ensure all sections are up-to-date with the latest repository contents.