vim.keymap.set('n', '<F2>', '<Cmd>LspUI rename<CR>', { desc = "Description $1" })
vim.keymap.set('n', '<F4>', '<Cmd>LspUI code_action<CR>', { desc = "Description $2" })
vim.keymap.set('n', 'K', '<Cmd>LspUI hover<CR>', { desc = "Description $3" })




-- code_action, hover, diagnostics
