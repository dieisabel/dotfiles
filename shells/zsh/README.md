# zsh

## Installation

Create new file `.zshenv` in your home directory:

```bash
$ cat << EOF > $HOME/.zshenv
export ZDOTDIR="$HOME/dotfiles/shells/zsh"; source $ZDOTDIR/.zshenv
EOF
```

Create `config.local.zsh` config file for custom settings:

```bash
$ touch ./config/config.local.zsh
```

Install antigen:

```bash
$ curl -L git.io/antigen > ./antigen.zsh
```
