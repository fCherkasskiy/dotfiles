local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.hide_tab_bar_if_only_one_tab = true
config.font_size = 12
-- config.window_background_opacity = 0.85
-- config.win32_system_backdrop = "Acrylic"
config.font = wezterm.font_with_fallback({
	"0xProto Nerd Font",
	"Noto Sans Symbols 2",
})

-- shell = { program = "zsh", args = ["-l", "-c", "tmux new-session -A -s main"] }
-- config.default_prog = { "/usr/bin/env", "zsh", "-l", "-c", "tmux new-session -A -s main" }
config.default_prog = { "/usr/bin/env", "zsh", "-l", "-c", "tmux new-session" }
config.send_composed_key_when_left_alt_is_pressed = false
config.send_composed_key_when_right_alt_is_pressed = true

return config
