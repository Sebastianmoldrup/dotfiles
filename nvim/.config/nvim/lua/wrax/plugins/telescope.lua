local ok, telescope = pcall(require, "telescope")
if not ok then return end

local actions = require("telescope.actions")

-- Trouble integration
local function open_with_trouble(...)
  return require("trouble.sources.telescope").open(...)
end

-- helpers (keep LazyVim-like behavior)
local function find_files_no_ignore()
  local action_state = require("telescope.actions.state")
  local line = action_state.get_current_line()
  require("fzf-lua") -- optional fallback if you used LazyVim pick before
  vim.notify("Replace LazyVim.pick with fzf-lua or telescope.builtin")
end

local function find_files_with_hidden()
  local action_state = require("telescope.actions.state")
  local line = action_state.get_current_line()
  vim.notify("Replace LazyVim.pick with telescope.builtin.find_files")
end

-- executable detection
local function find_command()
  if vim.fn.executable("rg") == 1 then
    return { "rg", "--files", "--color", "never", "-g", "!.git" }
  elseif vim.fn.executable("fd") == 1 then
    return { "fd", "--type", "f", "--color", "never", "-E", ".git" }
  elseif vim.fn.executable("fdfind") == 1 then
    return { "fdfind", "--type", "f", "--color", "never", "-E", ".git" }
  elseif vim.fn.executable("find") == 1 and vim.fn.has("win32") == 0 then
    return { "find", ".", "-type", "f" }
  elseif vim.fn.executable("where") == 1 then
    return { "where", "/r", ".", "*" }
  end
end

-- setup
telescope.setup({
  defaults = {
    prompt_prefix = " ",
    selection_caret = " ",

    get_selection_window = function()
      local wins = vim.api.nvim_list_wins()
      table.insert(wins, 1, vim.api.nvim_get_current_win())

      for _, win in ipairs(wins) do
        local buf = vim.api.nvim_win_get_buf(win)
        if vim.bo[buf].buftype == "" then
          return win
        end
      end

      return 0
    end,

    mappings = {
      i = {
        ["<C-t>"] = open_with_trouble,
        ["<A-t>"] = open_with_trouble,

        ["<A-i>"] = find_files_no_ignore,
        ["<A-h>"] = find_files_with_hidden,

        ["<C-Down>"] = actions.cycle_history_next,
        ["<C-Up>"] = actions.cycle_history_prev,
        ["<C-f>"] = actions.preview_scrolling_down,
        ["<C-b>"] = actions.preview_scrolling_up,
      },

      n = {
        ["q"] = actions.close,
      },
    },
  },

  pickers = {
    find_files = {
      find_command = find_command,
      hidden = true,
    },
  },
})
