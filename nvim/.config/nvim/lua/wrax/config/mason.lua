local ok, mason = pcall(require, "mason")
if not ok then return end

mason.setup({
  ui = {
    border = "rounded",
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})

local ok2, mason_lspconfig = pcall(require, "mason-lspconfig")
if not ok2 then return end

mason_lspconfig.setup({
  ensure_installed = {
    "ts_ls",        -- TypeScript/JavaScript
    "html",
    "cssls",
    "tailwindcss",
    "intelephense", -- PHP
    "pyright",      -- Python
    "clangd",       -- C/C++
    "omnisharp",    -- C#
    "lua_ls",
  },
  automatic_installation = true,
})
