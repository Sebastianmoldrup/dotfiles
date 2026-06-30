vim.diagnostic.config({
  underline = true,
  severity_sort = true,
  update_in_insert = false,
  virtual_text = {
    prefix = "●",
    spacing = 2,
    source = "if_many",
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "✘",
      [vim.diagnostic.severity.WARN]  = "▲",
      [vim.diagnostic.severity.HINT]  = "⚑",
      [vim.diagnostic.severity.INFO]  = "»",
    },
  },
  float = {
    border = "rounded",
    source = true,
  },
  jump = { float = true },
})
