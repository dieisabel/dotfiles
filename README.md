# Dotfiles

## Installation

Every tool/editor or something has a `README.md`, where you can find installation instructions.

## Remarks

1. I always place my dotfiles in `~/dotfiles` directory. All dotfiles uses this path as a root of dotfiles. Git for example:

    ```toml
    [core]
    excludesfile = ~/dotfiles/tools/git/ignore
    ```

    So make sure to change it to your location.
