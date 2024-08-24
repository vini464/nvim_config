local env_path = "/home/" .. os.getenv("USER") .. "/.config/nvim/lua/"
local cmd = vim.cmd

cmd("set expandtab")
cmd("set tabstop=2")
cmd("set softtabstop=2")
cmd("set shiftwidth=2")

cmd("set number")

vim.o.termguicolors = true



function Change_colors(color)
	if color == nil then
		cmd.colorscheme("default")
	else
		cmd.colorscheme(color)
	end
end
local handleThemes = require("handleThemes")
function ToggleDarkMode()
   handleThemes.ToggleDarkMode()
end
