-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- GLOBAL VIM
local set = vim.keymap.set

-- SCREEN MOVEMENT
set("n", "N", "Nzzzv")
set("n", "n", "nzzzv")
set("n", "<c-d>", "<c-d>zz")
set("n", "<c-u>", "<c-u>zz")

-- SAVE BUFFER
vim.keymap.set({ "n", "i" }, "<D-s>", "<Esc>:w<CR>", { noremap = true, silent = true })

-- HARPOON KEYMAPS
local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function()
  harpoon:list():add()
end)
vim.keymap.set("n", "<C-e>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "<C-h>", function()
  harpoon:list():select(1)
end)
vim.keymap.set("n", "<C-t>", function()
  harpoon:list():select(2)
end)
vim.keymap.set("n", "<C-n>", function()
  harpoon:list():select(3)
end)
vim.keymap.set("n", "<C-s>", function()
  harpoon:list():select(4)
end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function()
  harpoon:list():prev()
end)
vim.keymap.set("n", "<C-S-N>", function()
  harpoon:list():next()
end)

-- HOP KEYMAPS
set("n", "f", ":HopWord<CR>", { silent = true })
set("n", "F", ":HopPatternCurrentLine<CR>", { silent = true })

-- Identation
set("i", "<C-d>", '<CR><CR><UP><ESC>"_cc')

-- Copilot
vim.keymap.set("i", "<C-l>", function()
  require("copilot.suggestion").accept()
end, { desc = "Copilot Accept", silent = true })
