# Linux Configuration Setup

This repository contains a configuration setup to enhance your terminal experience on Linux. It includes custom aliases, a personalized prompt using Oh-My-Zsh, and various modules to boost productivity.

## Prerequisites

Before you begin, make sure you have the following installed on your system:

- [Zsh](https://www.zsh.org/)
- [Oh-My-Zsh](https://ohmyz.sh/)

## Installation

### 1. Clone the repository

```bash
git clone https://github.com/BadEnd777/dotfiles.git
```

### 2. Open the `linux` directory

```bash
cd dotfiles/linux
```

### 3. Give the `install.sh` script executable permissions

```bash
chmod +x install.sh
```

### 4. Run the `install.sh` script

```bash
./install.sh
```

Currently, the script will only install the Zsh profile and Oh-My-Zsh theme. I plan to add more features in the future.

> [!NOTE]
> Manually install read the [manual installation](./MANUAL_INSTALLATION.md) guide.

## Usage

### Aliases

| Alias | Command | Description |
| :---: | :---: | :---: |
| `l` | `ls -a -l` | List all files and directories in the current directory |
| `nf` | `touch` | Create a new file |
| `nd` | `mkdir` | Create a new directory |
| `rm` | `rm -rf` | Remove a file |
| `rd` | `rm -rf` | Remove a directory |
| `vim` | `nvim` | Open Neovim |
| `c` | `clear` | Clear the terminal screen |
| `g` | `git` | Git |
| `gs` | `git status` | Git status |
| `ga` | `git add` | Git add |
| `gc` | `git commit -m` | Git commit |
| `gp` | `git push` | Git push |

### Plugins

| Plugin | Description |
| :---: | :---: |
| [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) | Suggests commands as you type based on history and completions |
| [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) | Fish shell-like syntax highlighting for Zsh |
| [fast-syntax-highlighting](https://github.com/zdharma/fast-syntax-highlighting) | Optimized syntax highlighting for Zsh |
| [zsh-autocomplete](https://github.com/marlonrichert/zsh-autocomplete) | Fish-like fast/unobtrusive autocomplete for Zsh |

---