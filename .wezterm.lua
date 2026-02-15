-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.default_cursor_style = "SteadyBlock"
-- This is where you actually apply your config choices.

config.enable_tab_bar = false

-- For example, changing the initial geometry for new windows:
config.initial_cols = 180
config.initial_rows = 40

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.window_background_opacity = 1

-- or, changing the font size, family and color scheme.
config.font_size = 12
config.color_scheme = "Firewatch"
config.font = wezterm.font("Iosevka Nerd Font", { weight = "Medium", style = "Oblique" })
config.default_prog = { "zellij" }

config.colors = {
	cursor_bg = "#D65740",
	cursor_fg = "black",
	cursor_border = "black",
}

config.warn_about_missing_glyphs = false

-- Finally, return the configuration to wezterm:
return config
