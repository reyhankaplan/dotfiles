local g = vim.g
local keymap = require('reyhan.utils').keymap

g.nvim_tree_git_hl = 1
g.nvim_tree_show_icons = {
  git = 0,
  folders = 1,
  files = 1,
  folder_arrows = 0,
}

local nvim_tree = require('nvim-tree')
local tree_cb = require'nvim-tree.config'.nvim_tree_callback

nvim_tree.setup({
  hijack_cursor = true,
  view = {
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
