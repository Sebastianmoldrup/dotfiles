-- Load the plugin immediately (vim.pack puts everything in opt/)
vim.cmd("packadd! nvim-treesitter")
vim.cmd("packadd! nvim-ts-autotag")

local ok, ts = pcall(require, "nvim-treesitter")
if not ok then return end

ts.setup()

-- Install parsers on first startup if missing
vim.api.nvim_create_autocmd("VimEnter", {
  once = true,
  callback = function()
    local config = require("nvim-treesitter.config")
    local install = require("nvim-treesitter.install")
    local wanted = { "tsx", "typescript", "javascript", "html", "css", "json", "lua", "markdown" }

    local installed = {}
    for _, v in ipairs(config.get_installed()) do
      installed[v] = true
    end

    local missing = vim.tbl_filter(function(l) return not installed[l] end, wanted)
    if #missing > 0 then
      install.install(unpack(missing))
    end
  end,
})

-- Neovim 0.12 built-in treesitter highlighting
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "tsx", "typescript", "javascript", "javascriptreact", "html", "css", "json", "lua", "markdown" },
  callback = function(args)
    pcall(vim.treesitter.start, args.buf)
  end,
})

-- Auto-close/rename JSX tags via nvim-ts-autotag
local autotag_ok, autotag = pcall(require, "nvim-ts-autotag")
if autotag_ok then
  autotag.setup()
end
