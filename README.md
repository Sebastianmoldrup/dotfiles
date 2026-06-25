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

<https://github.com/Sebastianmoldrup/dotfiles.git>

# Setup stow/symlinks

1. `stow zsh`
2. `stow git`
3. `stow nvim`

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

# Shell setup

```
export ZDOTDIR="$HOME/.config/zsh"
```

# Philosophy

```
This repository follows the XDG Base Directory specification.

Configuration files are stored in:

~/.config

instead of cluttering the home directory.
```
