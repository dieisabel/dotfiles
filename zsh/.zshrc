# Source prompt
source $ZDOTDIR/prompt.zsh

# Source aliases
source $ZDOTDIR/.aliases

# Source plugins
source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Unbind <Ctrl> + A key so I can use that as a prefix key in tmux
bindkey -r "^A"
