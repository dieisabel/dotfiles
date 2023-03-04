# Git

## Installation

Link `config` file to `$HOME/.config/git/config`:

```bash
$ ln $HOME/dotfiles/git/config $HOME/.config/git/config
```

Create new `config.local` using `config.local.template`:

```bash
$ cat ./config.local.template > ./config.local
```

Install [`delta`](https://github.com/dandavison/delta) for syntax-highlighting in diff.
