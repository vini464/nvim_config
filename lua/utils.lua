local json = require"lunajson"
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
-----------
local nvim_env = "/home/" .. os.getenv("USER") .. "/.config/nvim/"
local persistence = nvim_env .. "persistence/"

local function read_table(file_path)
	local file, error_string = io.open(file_path, "r")
	if not file then
		print("Erro ao abrir o arquivo: " .. error_string)
		return {}
	end
	return json.decode(file:read("*a"))
end

local function write_table(table, file_path)
  local file, error_string = io.open(file_path, "w+")
  if not file then
    print("Erro ao salvar o arquivo: " .. error_string)
  else
    file:write(json.encode(table))
    print("Arquivo salvo com sucesso!")
  end
end

local default_themes_path = persistence .. "default_themes.json"

function SetDefautDarkTheme(theme)
  local themes = read_table(default_themes_path)
  themes.dark = theme
  write_table(themes, default_themes_path)
end

function SetDefautLightTheme(theme)
  local themes = read_table(default_themes_path)
  themes.light = theme
  write_table(themes, default_themes_path)
end

function ToggleDarkMode()
  local themes = read_table(default_themes_path)
  local actual_theme = vim.g.colors_name
  if actual_theme == themes.light then
    Change_colors(themes.dark)
    require("lualine").setup({
      options = {
        theme = themes.dark,
      }
    })
  else
    Change_colors(themes.light)
    require("lualine").setup({
      options = {
        theme = themes.light,
      }
    })
  end
end
