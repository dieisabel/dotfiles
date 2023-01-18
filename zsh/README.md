# zsh

## Installation

Create new file `.zshenv` in your home directory:

```bash
$ cat << EOF > $HOME/.zshenv
export ZDOTDIR="$HOME/dotfiles/zsh"; source $ZDOTDIR/.zshenv
EOF
```

Create `local.zsh` config file for custom settings:

```bash
$ touch ./local.zsh
```

Install [`pure`](https://github.com/sindresorhus/pure) theme:

```bash
$ git clone https://github.com/sindresorhus/pure.git "$XDG_DATA_HOME/zsh/prompts/pure"
```

Install [`zsh-syntax-highlighting`](https://github.com/zsh-users/zsh-syntax-highlighting) plugin:

```bash
$ git clone https://github.com/zsh-users/zsh-syntax-highlighting "$XDG_DATA_HOME/zsh/plugins/syntax-highlighting"
```
