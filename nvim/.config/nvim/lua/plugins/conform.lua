return {
  "stevearc/conform.nvim",
  optional = true,
  opts = function(_, opts)
    local formatters = opts.formatters_by_ft or {}

    formatters.javascript = { "prettier" }
    formatters.typescript = { "prettier" }
    formatters.jsx = { "prettier" }
    formatters.tsx = { "prettier" }
    formatters.html = { "prettier" }
    formatters.css = { "prettier" }
    formatters.tailwindcss = { "prettier" }
    formatters.php = { "prettier_php" }
    formatters.lua = { "stylua" }
    formatters.fish = { "fish_indent" }
    formatters.sh = { "shfmt" }
    formatters.md = { "prettier" }
    formatters.json = { "prettier" }
    formatters.yaml = { "prettier" }
    formatters.toml = { "prettier" }

    -- Prettier PHP custom config
    formatters.prettier_php = {
      command = "prettier",
      args = {
        "--plugin="
          .. (
            vim.fn.executable("/opt/homebrew/bin/npm") == 1
              and "/opt/homebrew/lib/node_modules/@prettier/plugin-php/src/index.mjs"
            or "/usr/local/lib/node_modules/@prettier/plugin-php/src/index.mjs"
          ),
        "--parser=php",
      },
      condition = function()
        return vim.fn.executable("prettier") == 1
      end,
    }
  end,
}
