local g = vim.g
local keymap = require('reyhan.utils').keymap

g.nvim_tree_git_hl = 1
g.nvim_tree_show_icons = {
  git = 0,
  folders = 1,
  files = 1,
}

-- Customize icons.
g.nvim_tree_icons = {
  default = '',
  symlink = '',
  git = {
    unstaged = '',
    staged = '',
    unmerged = '',
    renamed = '',
    deleted = '',
    untracked = '',
    ignored = '',
  },
  folder = {
    default = '',
    open = '',
    symlink = '',
  },
}

local nvim_tree = require('nvim-tree')
local tree_cb = require'nvim-tree.config'.nvim_tree_callback

nvim_tree.setup({
  hijack_cursor = true,
  view = {
    auto_resize = true,
    mappings = {
      list = {
        { key = 'l', cb = tree_cb("edit") },
        { key = 'h', cb = tree_cb("close_node") }
      }
    }
  }
})

keymap('n', '<Space>f', '<Cmd>NvimTreeToggle<CR>', { silent = true })
keymap('n', '<Space>F', '<Cmd>NvimTreeFindFile<CR>', { silent = true })
