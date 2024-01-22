# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
source ~/.config/zsh/themes/headline.zsh-theme

# Which plugins would you like to load?
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    fast-syntax-highlighting
    zsh-autocomplete
)

source $ZSH/oh-my-zsh.sh

# Aliases
alias l='ls -a -l'
alias nf='touch' # create new file
alias nd='mkdir' # create new directory
alias rm='rm -rf' # remove file
alias rd='rm -rf' # remove directory
alias vim='nvim' # vim
alias c='clear' # clear screen
alias g='git' # git
alias gs='git status' # git status
alias ga='git add' # git add
alias gc='git commit -m' # git commit
alias gp='git push' # git push
# bun completions
[ -s "/home/badend/.bun/_bun" ] && source "/home/badend/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
