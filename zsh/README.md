# zsh

## Installation

Create new file `.zshenv` in your home directory:

```bash
$ cat << EOF > $HOME/.zshenv
export ZDOTDIR="$HOME/dotfiles/zsh"; source $ZDOTDIR/.zshenv
EOF
```

Create `config.local.zsh` config file for custom settings:

```bash
$ touch ./config/config.local.zsh
```

Install [`pure`](https://github.com/sindresorhus/pure) theme:

```bash
$ git clone https://github.com/sindresorhus/pure.git "$XDG_DATA_HOME/zsh/prompts/pure"
```
