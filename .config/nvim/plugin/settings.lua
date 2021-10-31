local opt = vim.opt
local cmd = vim.cmd

vim.g.material_style = "deep ocean"

opt.termguicolors = true -- Enables 24-bit RGB color support
cmd('colorscheme material') -- Load colorscheme

opt.number = true -- Show line numbers
opt.cursorline = true -- Highlight cursor line
opt.ignorecase = true -- Ignore case search
opt.smartcase = true -- Smart search
opt.tabstop = 2 -- Number of spaces that a <Tab> in the file counts for
opt.shiftwidth = 0 -- Number of spaces to use for each step of auto indent
opt.softtabstop = -1 -- Number of spaces that a <Tab> counts
opt.expandtab = true -- Use spaces instead of tab characters
opt.signcolumn = 'yes' -- Always draw the sign column even if there is no sign in it

opt.list = true
opt.listchars = {
  tab = '→ ',
}

-- UI Characters
opt.fillchars = {
  vert = ' ', -- Vertical separator
  msgsep = '─', -- Message separator
  eob = ' ' -- Empty line indicator
}
