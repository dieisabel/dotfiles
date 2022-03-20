export EDITOR=vim
export VISUAL=vim

# Set XDG environment variables
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"

# Set ls colors
source $ZDOTDIR/lscolors.zsh

# Add local binaries to path
if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Tell Vim where vimrc is located
export VIMINIT="source $XDG_CONFIG_HOME/vim/vimrc"

# Set environment variables for Python and its tools
# https://python-poetry.org/docs/
# https://pipenv.pypa.io/en/latest/
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc"
export PATH="$HOME/applications/poetry/bin:$PATH"
export POETRY_VIRTUALENVS_IN_PROJECT=1
export PIPENV_VENV_IN_PROJECT=1

# Set environment variables for asdf tool
# https://asdf-vm.com/
export ASDF_CONFIG_FILE="$XDG_CONFIG_HOME/asdf/asdfrc"
export ASDF_DEFAULT_TOOL_VERSIONS_FILENAME="$XDG_CONFIG_HOME/asdf/tool-versions"
export ASDF_DATA_DIR="$XDG_DATA_HOME/asdf"
export ASDF_DIR="$XDG_DATA_HOME/asdf"

# Set path for tools
. "$HOME/applications/cargo/env"
. "$HOME/applications/poetry/env"
