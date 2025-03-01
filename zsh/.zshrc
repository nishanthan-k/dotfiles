# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:/opt/docker-desktop/bin
export DOCKER_HOST=unix:///var/run/docker.sock
export PATH=$PATH:/home/nishanthan/.npm-global/bin

ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting you-should-use)

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=cyan,bold'

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"



# Load Angular CLI autocompletion.
# source <(ng completion script)
# eval "$(zoxide init zsh)"

# bindkey -s ^f "tmux-sessionizer\n"
