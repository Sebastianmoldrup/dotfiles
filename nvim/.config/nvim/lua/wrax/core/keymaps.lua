-- copy file path (absolute)
vim.keymap.set("n", "<leader>cp", function()
  local p = vim.fn.expand("%:p")
  vim.fn.setreg("+", p)
  vim.notify(p)
end)

-- copy file path (relative)
vim.keymap.set("n", "<leader>cr", function()
  local p = vim.fn.expand("%")
  vim.fn.setreg("+", p)
  vim.notify(p)
end)

-- window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")

-- command-line movement
vim.keymap.set("c", "<C-a>", "<Home>")
vim.keymap.set("c", "<C-e>", "<End>")

