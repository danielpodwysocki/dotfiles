# plugin manager
source ~/.antigen.zsh
antigen use oh-my-zsh


# Load bundles from the default repo (oh-my-zsh).
antigen bundle git
antigen bundle command-not-found
antigen bundle docker

# plugin installs
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# theme
antigen theme robbyrussell
antigen apply

# VIM keybindings
bindkey -v
# enable reverse history search
bindkey '^R' history-incremental-search-backward
autoload -Uz compinit && compinit

setopt HIST_IGNORE_SPACE

autoload -U compinit; compinit

# load my work zshrc, if I am on the work laptop
if [[ -e ~/.zshrc_trx ]];
then
	source ~/.zshrc_trx;
fi
