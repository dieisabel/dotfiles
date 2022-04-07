# Make vim default editor
export EDITOR=vim
export VISUAL=vim

# Add local binaries to path
if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Set XDG environment variables
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"

# Set directory for applications (GUI, console tools etc)
export APPLICATIONS_HOME="$HOME/applications"

# Set ls colors
source $ZDOTDIR/lscolors.zsh

# Tell Vim where vimrc is located
export VIMINIT="source $XDG_CONFIG_HOME/vim/vimrc"

# Set environment variables for Python and its tools
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc"
export POETRY_VIRTUALENVS_IN_PROJECT=1
export PIPENV_VENV_IN_PROJECT=1

# Set environment variables for Rust toolchain
export RUSTUP_HOME="$APPLICATIONS_HOME/rust/rustup"
export CARGO_HOME="$APPLICATIONS_HOME/rust/cargo"

# Source Cargo binaries
if [ -f "$CARGO_HOME/env" ]; then
  source $CARGO_HOME/env
else
  echo "Did you forget to install Cargo? Use rustup, https://rustup.rs/"
fi
