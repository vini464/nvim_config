local env_path = "/home/" .. os.getenv("USER") .. "/.config/nvim/lua/"
local themes_path = env_path .. "utils/themes.lua"
local tableUpdater = require("tableUpdater")
M = {

  SetDefautTheme = function(theme)
		local themes = tableUpdater.readTable(themes_path)
		themes.theme = theme
		tableUpdater.writeTable(themes_path, themes)
  end,

	SetDefautDarkTheme = function(theme)
		local themes = tableUpdater.readTable(themes_path)
		themes.dark = theme
		tableUpdater.writeTable(themes_path, themes)
	end,

	SetDefautLightTheme = function(theme)
		local themes = tableUpdater.readTable(themes_path)
		themes.light = theme
		tableUpdater.writeTable(themes_path, themes)
	end,

	ToggleDarkMode = function()
		local themes = tableUpdater.readTable(themes_path)
		local actual_theme = vim.g.colors_name
		if actual_theme == themes.light then
			Change_colors(themes.dark)
			require("lualine").setup({
				options = {
					theme = themes.dark,
				},
			})
      actual_theme = themes.dark
		else
			Change_colors(themes.light)
			require("lualine").setup({
				options = {
					theme = themes.light,
				},
			})
      actual_theme = themes.light
	end
    M.SetDefautTheme(actual_theme)
	end,
}
return M
