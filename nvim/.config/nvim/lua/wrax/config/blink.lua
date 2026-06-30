local ok, blink = pcall(require, "blink.cmp")
if not ok then return end

blink.setup({
  keymap = { preset = "default" },
  appearance = {
    nerd_font_variant = "mono",
  },
  sources = {
    default = { "lsp", "path", "snippets", "buffer" },
  },
  completion = {
    accept = {
      auto_brackets = { enabled = true },
    },
    documentation = {
      auto_show = true,
      auto_show_delay_ms = 200,
    },
  },
})
