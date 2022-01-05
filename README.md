# Description

My personal dotfiles

# Installation

1. Clone this repository into a local project folder of your choice
2. Call `bash boostrap.sh` to synchronize dotfiles to your home directory

# Customization

Custom configuration will go to `$HOME/.extra`. This file can be creatd optionally to put personal configuration that will not be checked in.

E.g.:

```
GIT_AUTHOR_NAME="gitrust"
git config --global user.name "$GIT_AUTHOR_NAME" 
```

# Thanks to

- Mathias Bynens [dotfiles](https://github.com/mathiasbynens/dotfiles) setup strategy
- Ethan Schoonover [solarized vim colorscheme](https://github.com/altercation/vim-colors-solarized)
