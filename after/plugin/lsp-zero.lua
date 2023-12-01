local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({ buffer = bufnr })
	lsp_zero.buffer_autoformat()
end)

lsp_zero.format_on_save({
	format_opts = {
		async = false,
		timeout_ms = 10000,
	},
	servers = {
		['rust_analyzer'] = { 'rust' },
		['tsserver'] = { 'javascript', 'typescript' },
		['jdtls'] = { 'java' },
		['pyright'] = { 'python' }
	}
})



require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = { 'jdtls' },
	handlers = {
		lsp_zero.default_setup,
	},
})
---
-- Replace these language servers
-- with the ones you have installed in your system
---
require('lspconfig').lua_ls.setup({})
require('lspconfig').rust_analyzer.setup({})
require('lspconfig').jdtls.setup({})
require('lspconfig').pyright.setup({})
require('lspconfig').bashls.setup({})
