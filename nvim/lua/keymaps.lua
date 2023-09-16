-- lua/keymaps.lua
local keymap = vim.keymap.set
local treeApi = require("nvim-tree.api")
local opts = { noremap = true, silent = true }

keymap('n', '<C-w>', '<C-w>w', opts)

keymap('n', '<C-p>', ':Telescope find_files<CR>', opts)

keymap('n', '<C-e>', ':NvimTreeFocus<CR>', opts)
keymap('n', '<F2>', treeApi.fs.rename_sub, opts)
keymap('n', '<C-n>', treeApi.fs.create, opts)
keymap('n', '<Del>', treeApi.fs.remove, opts)

keymap('n', '<C-t>', ':ToggleTerm<CR>', opts)
keymap('t', '<C-t>', '<C-\\><C-n>:ToggleTerm<CR>', opts)

keymap('', '<C-c>', '"+y',  opts)
keymap('', '<C-x>', '"+x',  opts)
keymap('', '<C-y>', '<C-r>',  opts)
keymap('', '<C-z>', 'u',  opts)
keymap('', '<C-a>', 'ggVG',  opts)

keymap('n', '<C-End>', 'G',  opts)
keymap('n', '<C-Home>', 'gg',  opts)
keymap('n', '<C-Right>', 'w',  opts)
keymap('n', '<C-S-Right>', 'vw',  opts)
keymap('n', '<C-Left>', 'b',  opts)
keymap('n', '<C-S-Left>', 'vb',  opts)