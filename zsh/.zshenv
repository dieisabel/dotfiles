export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export EDITOR="vim"
export VISUAL="vim"
export PAGER="less"
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export HISTCONTROL="ignoredups"
export HISTFILE="$XDG_DATA_HOME/zsh/history"
export HISTFILESIZE=1000
export HISTSIZE=1000
export DOTFILES="$HOME/dotfiles"
export POETRY_VIRTUALENVS_IN_PROJECT=1
export POETRY_HOME="$APPLICATIONS_HOME/poetry"
export PIPENV_VENV_IN_PROJECT=1
export PYENV_ROOT="$APPLICATIONS_HOME/pyenv"
if [ -d "$POETRY_HOME/bin" ]; then
  export PATH="$POETRY_HOME/bin:$PATH"
fi
if [ -d "$PYENV_ROOT/bin" ]; then
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi
export RUSTUP_HOME="$APPLICATIONS_HOME/rust/rustup"
export CARGO_HOME="$APPLICATIONS_HOME/rust/cargo"
if [ -f "$CARGO_HOME/env" ]; then
  source $CARGO_HOME/env
fi
if [ -d "$HOME/.local/bin" ]; then
  export PATH="$HOME/.local/bin:$PATH"
fi
if [ -d "$HOME/.local/lib" ]; then
  export LD_LIBRARY_PATH="$HOME/.local/lib:$LD_LIBRARY_PATH"
fi
if [ -d "$HOME/.local/lib/pkgconfig" ]; then
  export PKG_CONFIG_PATH="$HOME/.local/lib/pkgconfig:$PKG_CONFIG_PATH"
fi
if [ -d "$HOME/.local/share/man" ]; then
  export MANPATH="$HOME/.local/share/man:$MANPATH"
fi
if [ -f "$ZDOTDIR/local.zsh" ]; then
  source $ZDOTDIR/local.zsh
fi
