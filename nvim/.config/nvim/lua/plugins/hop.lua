return {
  {
    "phaazon/hop.nvim",
    branch = "v2", -- optional but strongly recommended
    config = function()
      require("hop").setup({
        keys = "etovxqpdygfblzhckisuran",
        multi_windows = true,
        uppercase_labels = true,
      })
    end,
  },
}
