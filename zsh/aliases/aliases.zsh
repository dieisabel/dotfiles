if [ -x "$(command -v exa)" ]; then
  alias ls="exa --icons"
  echo "Exa is used as a alias to ls"
else
  alias ls="ls --color=auto"
  echo "Exa not found, using standard ls"
fi

if [ -x "$(command -v bat)" ]; then
  alias cat="bat"
  echo "Bat is used as a alias to cat"
else
  echo "Bat not found, using standard cat"
fi

if [ -x "$(command -v fd)" ]; then
  alias find="fd"
  echo "Fd is used as a alias to find"
else
  echo "Fd not found, using standard find"
fi
