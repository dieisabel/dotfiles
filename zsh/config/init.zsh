source $ZDOTDIR/config/local.zsh
source $ZDOTDIR/config/xdg.zsh
source $ZDOTDIR/config/defaults.zsh
source $ZDOTDIR/config/tools/init.zsh

if [ -f "$ZDOTDIR/config/config.local.zsh" ]; then
  source $ZDOTDIR/config/config.local.zsh
fi
