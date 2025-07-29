vim.g.mapleader = " "

vim.keymap.set('n', '<leader>q', ':q<cr>', {})
vim.keymap.set('n', '<leader>w', ':w<cr>', {})


-- splits:

vim.keymap.set('n', '<leader>h', ':split<cr>', {})
vim.keymap.set('n', '<leader>v', ':vsplit<cr>', {})


-- movements:

vim.keymap.set('n', '<C-Left>', '<C-w>h', {})
vim.keymap.set('n', '<C-Up>', '<C-w>k', {})
vim.keymap.set('n', '<C-Down>', '<C-w>j', {})
vim.keymap.set('n', '<C-Right>', '<C-w>l', {})

-- resizing

vim.keymap.set('n', '<M-left>', ':vertical resize -2<cr>')
vim.keymap.set('n', '<M-right>', ':vertical resize +2<cr>')
vim.keymap.set('n', '<M-up>', ':horizontal resize -2<cr>')
vim.keymap.set('n', '<M-down>', ':horizontal resize +2<cr>')

-- themes:

vim.keymap.set('n', '<leader>dt', ":lua ToggleDarkMode()<cr>")
