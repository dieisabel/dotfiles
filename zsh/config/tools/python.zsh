export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc"
export POETRY_VIRTUALENVS_IN_PROJECT=1
export POETRY_HOME="$APPLICATIONS_HOME/poetry"
export PIPENV_VENV_IN_PROJECT=1
export PYENV_ROOT="$APPLICATIONS_HOME/pyenv"

if [ -d $POETRY_HOME/bin ]; then
  export PATH="$POETRY_HOME/bin:$PATH"
  echo "Poetry loaded"
else
  echo "Poetry is not installed"
fi

if [ -d $PYENV_ROOT/bin ]; then
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
  echo "Pyenv loaded"
else
  echo "Pyenv is not installed"
fi
