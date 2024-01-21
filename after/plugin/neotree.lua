vim.keymap.set("n", "<leader>nt", "<Cmd>Neotree filesystem reveal right<CR>")
vim.keymap.set("n", "<leader>nc", "<Cmd>Neotree close<CR>")



require("neo-tree").setup({
	close_if_last_window = true,
	enable_git_status = true,
	enable_diagnostics = true,
	use_libuv_file_watcher = true,

})
