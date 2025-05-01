# Add custom binaries to PATH
export PATH="$HOME/bin:$PATH"

# Node Version Manager (NVM) setup
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Set terminal colors
export LSCOLORS=GxFxCxDxBxegedabagaced
export CLICOLOR=1

# Command history configuration
export HISTSIZE=10000
export HISTCONTROL=ignoredups:erasedups
shopt -s histappend  # Append history instead of overwriting
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"  # Share history between sessions

# Set default editor
export EDITOR=vim
export LANG=en_US.UTF-8

export PS1="\[\e[34m\][\A] \[\e[31m\]\w\[\e[0m\] \$ "
alias rm="rm -v"
alias cp="cp -v"
alias mv="mv -v"
alias ll="ls -la"
