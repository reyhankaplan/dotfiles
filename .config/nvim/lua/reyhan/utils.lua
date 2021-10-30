local api = vim.api

local utils = {}

function utils.keymap(mode, lhs, rhs, _opts)
	local opts = { noremap = true }

	for key, value in pairs(_opts or {}) do
		opts[key] = value
	end

  api.nvim_set_keymap(mode, lhs, rhs, opts)
end

return utils
