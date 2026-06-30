-- Set <space> as leader (must happen before other plugins loaded)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Relative line numbers
vim.o.relativenumber = true
vim.o.number = true -- display absolute line number instead of 0

-- Case-insensitive searching using capital letters
vim.o.ignorecase = true
vim.o.smartcase = true

-- Raise dialog if you close unsaved buffer (prevent mistakes)
vim.o.confirm = true

-- Disable swap files to prevent annoying errors
vim.opt.swapfile = false

-- Make Nvim use system clipboard
vim.opt.clipboard = "unnamedplus"

-- Remove "~" at the end of buffer
vim.o.fillchars = "eob: "  
vim.o.number = true
vim.o.relativenumber = true

-- Autocomplete builtin
vim.o.autocomplete = true

-- Cursor animation
vim.o.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250"
