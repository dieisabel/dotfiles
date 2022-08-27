# Neovim

## Installation

Link `nvim` folder to `$HOME/.config/nvim`:

```bash
$ ln -s $HOME/dotfiles/editors/nvim $HOME/.config/nvim
```

Install `tree-sitter-cli` for the syntax highlighting support:

```bash
$ npm install -g tree-sitter-cli
```

Install plugins using packer (if not automatically installed):

```vim
:PackerInstall
```
