export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh


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
