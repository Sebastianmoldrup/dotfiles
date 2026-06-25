vim.lsp.enable({
  "ts_ls",
  "html",
  "cssls",
  "tailwindcss",
  "intelephense",
  "pyright",
  "ruff",
  "clangd",
  "omnisharp",
  "lua_ls",
})

-- keymaps that activate when LSP attaches to a buffer
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(event)
    local map = function(keys, func, desc)
      vim.keymap.set("n", keys, func, { buffer = event.buf, desc = desc })
    end

    map("gd", vim.lsp.buf.definition,      "Go to definition")
    map("gD", vim.lsp.buf.declaration,     "Go to declaration")
    map("gr", vim.lsp.buf.references,      "Go to references")
    map("gi", vim.lsp.buf.implementation,  "Go to implementation")
    map("K",  vim.lsp.buf.hover,           "Hover docs")
    map("<leader>ca", vim.lsp.buf.code_action, "Code action")
    map("<leader>rn", vim.lsp.buf.rename,       "Rename symbol")
    map("<leader>d",  vim.diagnostic.open_float, "Show diagnostic")
    map("[d", vim.diagnostic.goto_prev,    "Previous diagnostic")
    map("]d", vim.diagnostic.goto_next,    "Next diagnostic")
  end,
})
