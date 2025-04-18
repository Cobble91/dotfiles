---=== Default NVim stuff ===---
-- indent
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- pane navigation
vim.keymap.set('n', '<C-k>', '<noh>wincmd k<CR>')
vim.keymap.set('n', '<C-j>', '<noh>wincmd j<CR>')
vim.keymap.set('n', '<C-h>', '<noh>wincmd h<CR>')
vim.keymap.set('n', '<C-l>', '<noh>wincmd l<CR>')
vim.keymap.set('n', '<C-w>s', '<noh>new<CR>') -- make ^ws open blank tab
vim.keymap.set('n', '<C-w>v', '<noh>vnew<CR>') -- " ^wv "
vim.keymap.set({'i', 'n', 'v'}, '<C-C>', '<esc>', { desc = 'Make Ctrl+C behave exactly like escape.' }) -- fixes inline error not showing after edit
vim.keymap.set({'i', 'n', 'v'}, '<esc>', '<cmd>noh<CR>')

-- other
vim.cmd("set number") -- current line num
vim.cmd("set rnu") -- rel line num
vim.cmd("set nowrap") -- no wrap
vim.cmd("set splitbelow") -- open newly-split windows below
vim.cmd("set splitright") -- " to the right

---=== Lazy Stuff ===---
-- lazy.nvim
require("config.lazy")

-- telescope | https://github.com/nvim-telescope/telescope.nvim
-- local builtin = require('telescope.builtin')
vim.g.mapleader = " "
-- vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
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

vim.cmd("set signcolumn=yes:1")

-- uhh
vim.keymap.set('n', '<leader>td', function()
  vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end, { silent = true, noremap = true })
