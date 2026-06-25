My personal macOS/Linux development environment. Inspired by other developers to create a darker, clean and minimalistic interface with more effective and smoother workflow.

# Features

- Zsh and Oh My Zsh
- Neovim
- Git config
- Homebrew
- GNU Stow
- Tmux
- Ghostty

# Requirements

- Git
- GNU Stow
- Homebrew
- Tmux

# Clone repository

Github CLI: gh repo clone Sebastianmoldrup/dotfiles
HTTPS: <https://github.com/Sebastianmoldrup/dotfiles.git>

# GNU stow setup for symlinks 

``cd ~/.dotfiles`` then run ``stow *``

## Repository structure

```
dotfiles/
├── git/
│   └── .gitconfig
├── zsh/
│   └── .config/zsh/
├── nvim/
│   └── .config/nvim/
├── tmux/
│   └── .config/tmux/
└── README.md
```


# Philosophy

```
This repository follows the XDG Base Directory specification.

Configuration files are stored in:

~/.config

instead of cluttering the home directory.
```
