# VSCode

## Installation

Link `settings.json` file to `$HOME/.config/Code/User/settings.json`:

```bash
$ ln $HOME/dotfiles/vscode/settings.json $HOME/.config/Code/User/settings.json
```

Link `keybindings.json` file to `$HOME/.config/Code/User/keybindings.json`:

```bash
$ ln $HOME/dotfiles/vscode/keybindings.json $HOME/.config/Code/User/keybindings.json
```

Download and install JetBrains Mono Nerd Font on [Nerd Fonts website](https://www.nerdfonts.com/).

I use Vim extension in VSCode, so dont forget to configure vim (check `dotfiles/vim`).

Install extensions using script `extensions.sh`:

```bash
chmod +x extensions.sh
./extensions.sh
```
