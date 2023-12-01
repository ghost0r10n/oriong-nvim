-- Colors
--

vim.opt.termguicolors = true

function SetColor(color)
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)
end


SetColor() -- run on startup
