vim.g.mapleader = " "

vim.keymap.set('n', '<leader>q', ':q<cr>', {})
vim.keymap.set('n', '<leader>w', ':w<cr>', {})


-- splits:

vim.keymap.set('n', '<leader>h', ':split<cr>', {})
vim.keymap.set('n', '<leader>v', ':vsplit<cr>', {})


-- movements:

vim.keymap.set('n', '<C-j>', '<C-w>h', {})
vim.keymap.set('n', '<C-i>', '<C-w>k', {})
vim.keymap.set('n', '<C-k>', '<C-w>j', {})
vim.keymap.set('n', '<C-l>', '<C-w>l', {})
