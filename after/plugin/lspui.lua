vim.keymap.set('n', '<F2>', '<Cmd>LspUI rename<CR>', { desc = "Description $1" })
vim.keymap.set('n', '<F4>', '<Cmd>LspUI code_action<CR>', { desc = "Description $2" })
vim.keymap.set('n', 'K', '<Cmd>LspUI hover<CR>', { desc = "Description $3" })

--- @type LspUI_rename_config
local default_rename_config = {
	enable = true,
	command_enable = true,
	auto_select = true,
	key_binding = {
		exec = "<CR>",
		quit = "<ESC>",
	},
}

--- @type LspUI_lightbulb_config
local default_lightbulb_config = {
	enable = true,
	-- whether cache code action, if do, code action will use lightbulb's cache
	-- Sadly, currently this option is invalid, I haven't implemented caching yet
	is_cached = true,
	icon = "💡",
	-- defalt is 250 milliseconds, this will reduce calculations when you move the cursor frequently, but it will cause the delay of lightbulb, false will disable it
	debounce = 250,
}

--- @type LspUI_code_action_config
local default_code_action_config = {
	enable = true,
	command_enable = true,
	gitsigns = true, -- this will support gitsigns code actions, if you install gitsigns
	-- keybind support number keybind emmit code action
	key_binding = {
		exec = "<cr>",
		prev = "k",
		next = "j",
		quit = "q",
	},
}

--- @type LspUI_diagnostic_config
local default_diagnostic_config = {
	enable = true,
	command_enable = true,
}

--- @type LspUI_hover_config
local default_hover_config = {
	enable = true,
	command_enable = true,
	-- these keybind only works when there are multiple hovers
	key_binding = {
		prev = "p",
		next = "n",
		quit = "q",
	},
}

--- @type LspUI_inlay_hint_config
local default_inlay_hint_config = {
	enable = true,
	command_enable = true,
	filter = {
		whitelist = {},
		blacklist = {},
	},
}

-- for definition, type_definition, declaration, implementation, reference
-- we define two windows, call left is main view, right is secondary view

--- @type LspUI_definition_config
local default_definition_config = {
	enable = true,
	command_enable = true,
}

--- @type LspUI_type_definition_config
local default_type_definition_config = {
	enable = true,
	command_enable = true,
}

--- @type LspUI_declaration_config
local default_declaration_config = {
	enable = true,
	command_enable = true,
}

--- @type LspUI_implementation_config
local default_implementation_config = {
	enable = true,
	command_enable = true,
}

--- @type LspUI_reference_config
local default_reference_config = {
	enable = true,
	command_enable = true,
}

--- @type LspUI_pos_keybind_config
-- keybind for definition, type definition, reference, declaration, implemantation
local default_pos_keybind_config = {
	main = {
		back = "<leader>l", -- back to secondary view
		hide_secondary = "<leader>h", -- hide secondary view
	},
	secondary = {
		jump = "o", -- jump to code location
		jump_split = "sh", -- jump and split to code location
		jump_vsplit = "sv", -- jump and vsplit to code location
		jump_tab = "t", -- jump and tabedit to code location
		quit = "q", -- close main and secondary veiw
		hide_main = "<leader>h", -- hide main view
		enter = "<leader>l", -- enter into main view
	},
}

-- default config
--- @type LspUI_config
local default_config = {
	rename = default_rename_config,
	lightbulb = default_lightbulb_config,
	code_action = default_code_action_config,
	diagnostic = default_diagnostic_config,
	hover = default_hover_config,
	inlay_hint = default_inlay_hint_config,
	definition = default_definition_config,
	type_definition = default_type_definition_config,
	declaration = default_declaration_config,
	implementation = default_implementation_config,
	reference = default_reference_config,
	pos_keybind = default_pos_keybind_config,
}
