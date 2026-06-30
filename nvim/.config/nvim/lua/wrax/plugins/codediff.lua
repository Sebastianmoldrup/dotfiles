local ok, codediff = pcall(require, "codediff")
if not ok then return end

codediff.setup({})

vim.keymap.set('n', '<leader>gdu', '<cmd>CodeDiff<cr>', { desc = 'Git diff unstaged' })
vim.keymap.set('n', '<leader>gdc', '<cmd>CodeDiff merge %<cr>', { desc = 'Git diff resolve conflicts' })
vim.keymap.set('n', '<leader>gdm', '<cmd>CodeDiff main<cr>', { desc = 'Git diff main' })
vim.keymap.set('n', '<leader>gdh', '<cmd>CodeDiff HEAD~1<cr>', { desc = 'Git diff previous commit' })

