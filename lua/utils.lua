-- local env_path = "/home/" .. os.getenv("USER") .. "/.config/nvim/lua/"
local cmd = vim.cmd
local api = vim.api

cmd("set expandtab")
cmd("set tabstop=2")
cmd("set softtabstop=2")
cmd("set shiftwidth=2")

cmd("set number")
cmd("set relativenumber")

vim.o.termguicolors = true



local handleThemes = require("handleThemes")
function ToggleDarkMode()
   handleThemes.ToggleDarkMode()
end
function ChangeColors(color)
  handleThemes.Change_colors(color)
end
function SetDefaultDarkTheme(color)
  handleThemes.SetDefautDarkTheme(color)
end
function SetDefaultLightTheme(color)
  handleThemes.SetDefautLightTheme(color)
end
function ToggleTransparency()
  handleThemes.ToggleTransparency()
end
function TurnTransparent()
  handleThemes.TurnTransparent()
end
