local opt = vim.opt
local cmd = vim.cmd

opt.termguicolors = true -- Enables 24-bit RGB color support.
cmd('colorscheme material') -- Load colorscheme

opt.number = true -- Show line numbers
opt.cursorline = true -- Highlight cursor line
opt.ignorecase = true -- Ignore case search
opt.smartcase = true -- Smart search

-- UI Characters
opt.fillchars = {
	vert = ' ', -- Vertical separator
	msgsep = '─', -- Message separator
	eob = ' ' -- Empty line indicator
}
