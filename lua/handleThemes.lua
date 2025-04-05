local env_path = "/home/" .. os.getenv("USER") .. "/.config/nvim/lua/"
local themes_path = env_path .. "utils/colorschemes.lua"
local tableUpdater = require("tableUpdater")
M = {

  SetDefaultTheme = function(theme)
    local themes = tableUpdater.readTable(themes_path)
    themes.default_theme = theme
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
      actual_theme = themes.dark
    else
      actual_theme = themes.light
    end
    M.SetDefaultTheme(actual_theme)
    M.Change_colors(actual_theme)
  end,

  Change_colors = function(color)
    if color == nil then
      vim.cmd.colorscheme("default")
    else
      vim.cmd.colorscheme(color)
      print("colorscheme: "..color)
      require("lualine").setup({
        options = {
          theme = color,
        },
      })
    end
  end,
}
return M
