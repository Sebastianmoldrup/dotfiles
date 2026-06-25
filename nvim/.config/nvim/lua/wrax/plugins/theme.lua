local function setup(name, fn)
  local ok, mod = pcall(require, name)
  if ok then fn(mod) end
end

setup("kanagawa", function(m)
  m.setup({
    colors = { theme = { all = { ui = { bg_gutter = "none" } } } },
  })
end)

setup("rose-pine", function(m)
  m.setup({ styles = { transparency = true } })
end)

setup("vague", function(m)
  m.setup({ transparent = true })
end)

setup("catppuccin", function(m)
  m.setup({ transparent_background = true })
end)

vim.cmd.colorscheme("kanagawa-wave")

vim.api.nvim_set_hl(0, "Normal",     { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat",{ bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
vim.api.nvim_set_hl(0, "EndOfBuffer",{ bg = "none" })
