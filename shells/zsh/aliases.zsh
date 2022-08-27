if [ -x "$(command -v exa)" ]; then
  alias ls="exa --icons"
else
  alias ls="ls --color=auto"
  echo "Exa not found, using standard ls"
fi

if [ -x "$(command -v bat)" ]; then
  alias cat="bat"
else
  echo "Bat not found, using standard cat"
fi

if [ -x "$(command -v fd)" ]; then
  alias find="fd"
else
  echo "Fd not found, using standard find"
fi

if [ -x "$(command -v nvim)" ]; then
  alias vim="nvim"
else
  echo "Neovim not found, using vim"
fi
