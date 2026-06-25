-- lsp diagnostics style
vim.diagnostic.config({
  underline = false,
  severity_sort = true,
  update_in_insert = false,
  float = { source = "if_many" },
  jump = { float = true },
})
