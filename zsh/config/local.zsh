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
