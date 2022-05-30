# Make vim default editor
export EDITOR=vim
export VISUAL=vim

# Add local binaries to path
if [ -d "$HOME/.local/bin" ]; then
  PATH="$HOME/.local/bin:$PATH"
fi

# Add local libraries
if [ -d "$HOME/.local/lib" ]; then
  LD_LIBRARY_PATH="$HOME/.local/lib:$LD_LIBRARY_PATH"
fi

# Add local .pk files
if [ -d "$HOME/.local/lib/pkgconfig" ]; then
  PKG_CONFIG_PATH="$HOME/.local/lib/pkgconfig:$PKG_CONFIG_PATH"
fi

# Add local man pages
if [ -d "$HOME/.local/share/man" ]; then
  MANPATH="$HOME/.local/share/man:$MANPATH"
fi

# Set XDG environment variables
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"

# Set directory for applications (GUI, console tools etc)
export APPLICATIONS_HOME="$HOME/applications"

# Set ls colors
source $ZDOTDIR/lscolors.zsh

# Specify configuration file for vim
export VIMINIT="source $XDG_CONFIG_HOME/nvim/init.vim"

# Set variables for logs (used in custom scripts)
export LOG_HOME="$HOME/logs"
export LOG_FILE="$LOG_HOME/events.log"

# Set environment variables for Python and its tools
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc"
export POETRY_VIRTUALENVS_IN_PROJECT=1
export POETRY_HOME="$APPLICATIONS_HOME/poetry"
export PIPENV_VENV_IN_PROJECT=1

# Set environment variables for JS and its tools
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"

# Set environment variables for Rust toolchain
export RUSTUP_HOME="$APPLICATIONS_HOME/rust/rustup"
export CARGO_HOME="$APPLICATIONS_HOME/rust/cargo"

# Source Cargo binaries
if [ -f "$CARGO_HOME/env" ]; then
  source $CARGO_HOME/env
else
  echo "Did you forget to install Cargo? Use rustup, https://rustup.rs/"
fi
