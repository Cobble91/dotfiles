---=== Default NVim stuff ===---
-- indent
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- pane navigation
vim.keymap.set({'i', 'n', 'v'}, '<C-k>', '<cmd>wincmd k<CR>')
vim.keymap.set({'i', 'n', 'v'}, '<C-j>', '<cmd>wincmd j<CR>')
vim.keymap.set({'i', 'n', 'v'}, '<C-h>', '<cmd>wincmd h<CR>')
vim.keymap.set({'i', 'n', 'v'}, '<C-l>', '<cmd>wincmd l<CR>')
vim.keymap.set({'i', 'n', 'v'}, '<C-w>s', '<cmd>new<CR>') -- make ^ws open blank tab
vim.keymap.set({'i', 'n', 'v'}, '<C-w>v', '<cmd>vnew<CR>') -- " ^wv "

-- other keybinds
vim.keymap.set({'i', 'n', 'v'}, '<C-c>', '<esc>', { desc = 'Make Ctrl+C behave exactly like escape.' }) -- fixes inline error not showing after edit
vim.keymap.set({'i', 'n', 'v'}, '<esc>', '<cmd>noh<CR>')
-- vim.keymap.set({'i', 'n', 'v'}, '<esc>', '<cmd>\'<,\'>w !clip.exe<CR>')
vim.keymap.set({'n', 'v'}, 'gcp', function() -- https://stackoverflow.com/a/68317739
  vim.cmd("'<,'>w !clip.exe")
  -- vim.api.nvim_feedkeys("<esc>", 'n', false)
end)

-- other
vim.cmd("set number") -- current line num
vim.cmd("set rnu") -- rel line num
vim.cmd("set nowrap") -- no wrap
vim.cmd("set splitbelow") -- open newly-split windows below
vim.cmd("set splitright") -- " to the right
vim.cmd("set signcolumn=yes:1") -- make room left of line nums for error symbols
-- vim.cmd("filetype indent off")
vim.opt.showmode = false -- disable default mode indicator in favor of lualine

---=== Lazy Stuff ===---
-- lazy.nvim
require("config.lazy")

-- telescope | https://github.com/nvim-telescope/telescope.nvim
-- local builtin = require('telescope.builtin')
vim.g.mapleader = " "
-- vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' }) -- moved to ./lua/plugins/telecope.lua
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- treesitter
-- vim.cmd [[hi @function.builtin.lua guifg=yellow]] -- change highlight settings | https://www.youtube.com/watch?v=MpnjYb-t12A

-- default theme
-- vim.cmd('colorscheme github_dark_dimmed')
vim.cmd("colorscheme onedark")

-- neo-tree
vim.keymap.set('n', '<C-n>', '<cmd>Neotree filesystem toggle left<CR>')

-- uhh
vim.keymap.set('n', '<leader>td', function()
  vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end, { silent = true, noremap = true })
