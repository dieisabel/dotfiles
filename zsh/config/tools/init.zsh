if [ -d $HOME/applications ]; then
  export APPLICATIONS_HOME="$HOME/applications"

  source $ZDOTDIR/config/tools/python.zsh
  source $ZDOTDIR/config/tools/rust.zsh
  source $ZDOTDIR/config/tools/node.zsh
  source $ZDOTDIR/config/tools/antigen.zsh
else
  echo "Tools are not installed"
fi