local ok, flash = pcall(require, "flash")
if not ok then return end

flash.setup({})

vim.keymap.set({ "n", "x", "o" }, "s", flash.jump)
-- vim.keymap.set({ "n", "x", "o" }, "S", flash.treesitter)
