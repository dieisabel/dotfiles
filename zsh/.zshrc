source $ZDOTDIR/colors.zsh
fpath+=($XDG_DATA_HOME/zsh/prompts/pure)
autoload -U promptinit; promptinit
PURE_GIT_PULL=0
prompt pure
if [ -x "$(command -v exa)" ]; then
  alias ls="exa --icons"
else
  alias ls="ls --color=auto"
fi
if [ -x "$(command -v bat)" ]; then
  alias cat="bat --style=numbers"
fi
source $XDG_DATA_HOME/zsh/plugins/syntax-highlighting/zsh-syntax-highlighting.zsh
