-- All plugin registration in one place
vim.pack.add({

  -- dependencies
  "https://github.com/nvim-lua/plenary.nvim",

  -- fuzzy finder
  "https://github.com/nvim-telescope/telescope.nvim",

  -- syntax highlighting + text objects
  "https://github.com/nvim-treesitter/nvim-treesitter",

  -- lsp
  "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/williamboman/mason.nvim",
  "https://github.com/williamboman/mason-lspconfig.nvim",

  -- completion
  -- { src = 'https://github.com/saghen/blink.cmp', version = vim.version.range('1.x') },

  -- formatting
  "https://github.com/stevearc/conform.nvim",

  -- diagnostics ui
  "https://github.com/folke/trouble.nvim",

  -- debugging
  "https://github.com/mfussenegger/nvim-dap",
  "https://github.com/rcarriga/nvim-dap-ui",
  "https://github.com/theHamsta/nvim-dap-virtual-text",

  -- themes
  "https://github.com/rebelot/kanagawa.nvim",
  { src = "https://github.com/rose-pine/neovim", name = "rose-pine" },
  "https://github.com/vague-theme/vague.nvim",
  "https://github.com/catppuccin/nvim",

  -- ui
  "https://github.com/MeanderingProgrammer/render-markdown.nvim",
  "https://github.com/karb94/neoscroll.nvim",
  "https://github.com/goolord/alpha-nvim",

})
