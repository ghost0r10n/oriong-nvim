vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })
vim.keymap.set("n", "-", vim.cmd.Ex)
vim.g.mapleader = " "
-- Map Alt+h/j/k/l to move between panes in Neovim
vim.api.nvim_set_keymap('n', '<A-h>', '<C-W>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-j>', '<C-W>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-k>', '<C-W>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-l>', '<C-W>l', { noremap = true, silent = true })
