local api = vim.api
local keymap = require('reyhan.utils').keymap

-- Disable arrow keys for now
keymap('i', '<Up>', '<Nop>')
keymap('i', '<Down>', '<Nop>')
keymap('i', '<Right>', '<Nop>')
keymap('i', '<Left>', '<Nop>')
keymap('n', '<Up>', '<Nop>')
keymap('n', '<Down>', '<Nop>')
keymap('n', '<Right>', '<Nop>')
keymap('n', '<Left>', '<Nop>')
keymap('x', '<Up>', '<Nop>')
keymap('x', '<Down>', '<Nop>')
keymap('x', '<Right>', '<Nop>')
keymap('x', '<Left>', '<Nop>')

-- Clear search highlight
keymap('n', 'coh', '<Cmd>nohlsearch<CR>')

-- Window navigation
keymap('n', '<C-h>', '<C-w>h')
keymap('n', '<C-j>', '<C-w>j')
keymap('n', '<C-k>', '<C-w>k')
keymap('n', '<C-l>', '<C-w>l')

-- Buffer navigation
keymap('n', '<M-p>', '<Cmd>bprevious<CR>')
keymap('n', '<M-n>', '<Cmd>bnext<CR>')

-- Stay in Visual mode on indent
keymap('x', '>', '>gv')
keymap('x', '<', '<gv')
