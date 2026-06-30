local ok, conform = pcall(require, "conform")
if not ok then return end

conform.setup({
  formatters_by_ft = {
    javascript      = { "prettier" },
    javascriptreact = { "prettier" },
    typescript      = { "prettier" },
    typescriptreact = { "prettier" },
    css             = { "prettier" },
    html            = { "prettier" },
    json            = { "prettier" },
    yaml            = { "prettier" },
    markdown        = { "prettier" },
  },
  format_on_save = {
    timeout_ms = 1000,
    lsp_format = "fallback",
  },
})
