# path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# path to neovim
export PATH="$HOME/neovim/bin:$PATH"

ZSH_THEME="robbyrussell"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi

#source aliases
if [ -f ~/.config/zsh/zsh_aliases ]; then
  source ~/.config/zsh/zsh_aliases
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# fzf keybindings
source /usr/share/doc/fzf/examples/key-bindings.zsh

# fzf auto-completion
source /usr/share/doc/fzf/examples/completion.zsh
