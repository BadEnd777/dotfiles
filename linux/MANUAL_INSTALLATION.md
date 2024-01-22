## Manual Installation

This guide will walk you through the manual installation process for the Linux configuration setup.

### 1. Install Zsh

Install Zsh:

```bash
sudo apt install zsh
```

### 2. Install Oh-My-Zsh

Install Oh-My-Zsh:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 3. Install Zsh Plugins

Install Zsh plugins:

1. autosuggestions plugin

    ```bash
    git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
    ```
2. syntax-highlighting plugin

    ```bash
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
    ```
3. fast-syntax-highlighting plugin

    ```bash
    git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git $ZSH_CUSTOM/plugins/fast-syntax-highlighting
    ```
4. autocomplete plugin

    ```bash
    git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete
    ```

### 4. Configure Zsh Profile

Install the [.zshrc](https://github.com/BadEnd777/dotfiles/blob/main/linux/.zshrc) file:

```bash
wget https://raw.githubusercontent.com/BadEnd777/dotfiles/main/linux/.zshrc -O ~/.zshrc
```

### 5. Configure Oh-My-Zsh Theme

Download the [headline.zsh-theme](https://github.com/Moarram/headline) file:

```bash
$ wget https://raw.githubusercontent.com/moarram/headline/main/headline.zsh-theme -O ~/.config/zsh/themes/headline.zsh-theme
```

### 6. Restart Zsh

Restart Zsh:

```bash
exec zsh
```

Congratulations! You have successfully installed the Linux configuration setup.