local ok, telescope = pcall(require, "telescope")
if not ok then return end

telescope.setup({
  defaults = {
    prompt_prefix = "  ",
    selection_caret = "> ",
    cycle_results = true,
    mappings = {
      i = {
        ["<C-Down>"] = require("telescope.actions").cycle_history_next,
        ["<C-Up>"]   = require("telescope.actions").cycle_history_prev,
        ["<C-f>"]    = require("telescope.actions").preview_scrolling_down,
        ["<C-b>"]    = require("telescope.actions").preview_scrolling_up,
      },
      n = { ["q"] = require("telescope.actions").close },
    },
  },
	pickers = {
	  find_files = {
	    hidden = true,
	    find_command = {
	      "rg", "--files", "--hidden",
	      "--glob", "!**/.git/*",
	      "--glob", "!**/node_modules/*",
	      "--glob", "!**/.next/*",
	      "--glob", "!**/dist/*",
	      "--glob", "!**/.cache/*",
	    },
	  },
	  live_grep = {
	    additional_args = {
	      "--hidden",
	      "--glob", "!**/.git/*",
	      "--glob", "!**/node_modules/*",
	      "--glob", "!**/.next/*",
	      "--glob", "!**/dist/*",
	      "--glob", "!**/.cache/*",
	    },
	  },
	},
})

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader><leader>", builtin.find_files)
vim.keymap.set("n", "<leader>sg", builtin.live_grep)
vim.keymap.set("n", "<C-p>",      builtin.git_files)
vim.keymap.set("n", "<leader>ps", function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set("n", "<leader>pw", function()
  builtin.grep_string({ search = vim.fn.expand("<cword>") })
end)
