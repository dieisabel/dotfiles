if [ -f "$ZDOTDIR/antigen.zsh" ]; then
  source $ZDOTDIR/antigen.zsh
  echo "Antigen loaded"

  source $ZDOTDIR/plugins/plugins.zsh
else
  echo "Antigen is not installed"
fi
