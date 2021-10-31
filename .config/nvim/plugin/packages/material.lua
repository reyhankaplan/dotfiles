local material = require('material')
local g = vim.g

g.material_style = 'deep ocean'
local colors = require('material/colors')

material.setup({
  custom_highlights = {
    NvimTreeNormal = { bg = colors.contrast },
    NvimFolderIcon = {}
  }
})
