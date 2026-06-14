local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.hide_tab_bar_if_only_one_tab = true
config.default_domain = "WSL:Arch"
config.font_size = 12
-- config.window_decorations = "RESIZE"
-- config.window_background_opacity = 0.85
-- config.win32_system_backdrop = "Acrylic"
-- config.colors = {
-- 	background = "#1a1a1a", -- Dark Gray
-- 	foreground = "#ffffff", -- White text
-- }
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}
config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font_with_fallback({
  "JetBrainsMono Nerd Font",
  "Noto Sans Symbols 2",
  "0xProto Nerd Font",
})

return config
