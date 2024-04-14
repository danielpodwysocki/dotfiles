# plugin manager
source ~/.antigen.zsh
antigen use oh-my-zsh

mkdir -p ~/.application-logs
alias obsidian="nohup flatpak run md.obsidian.Obsidian &> ~/.application-logs/obsidian &"
alias bitwarden="nohup flatpak run com.bitwarden.desktop &> ~/.application-logs/bitwarden &"

alias kc="kubectl"

# don't save commands to history that begin with a space
setopt HIST_IGNORE_SPACE


# Load bundles from the default repo (oh-my-zsh).
antigen bundle git
antigen bundle command-not-found
antigen bundle docker
#antigen bundle kubectl

# plugin installs
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle sawdashota/go-task-completions

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

export PATH=$PATH:~/go/bin
export PATH=$PATH:~/.pulumi/bin
export PATH=$PATH:~/.local/bin
export PATH=$PATH:/opt/visual-studio-code/bin

# >>>> Vagrant command completion (start)
fpath=(/opt/vagrant/embedded/gems/2.3.2/gems/vagrant-2.3.2/contrib/zsh $fpath)
compinit
# <<<<  Vagrant command completion (end)
export EDITOR=vim

source <(kubectl completion zsh)

export TERM=xterm-256color
export ANSIBLE_VAULT_PASSWORD_FILE=~/.ansible-vault-pass


alias exportenv='export $( grep -vE "^(#.*|\s*)$" .env )'

if [ -f /etc/arch-release ]; then
	export BROWSER=/usr/bin/google-chrome-stable
fi
eval "$(direnv hook zsh)"

