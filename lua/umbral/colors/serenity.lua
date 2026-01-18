---@class Palette
-- stylua: ignore
local palette = {
	black           = "#0b0a12",
	red             = "#d14e7c",
	primary         = "#c081fa",
	yellow          = "#f1c4e0",
	blue            = "#6f7ef0",
	magenta         = "#a048ed",
	cyan            = "#7aa6ff",
	white           = "#dfb7e8",
	bright_black    = "#35355e",
	bright_red      = "#f72d7c",
	orange          = "#e9729d",
	bright_yellow   = "#fca1e7",
	bright_blue     = "#9ca7ff",
	bright_magenta  = "#c081fa",
	bright_cyan     = "#9ca7ff",
	bright_white    = "#eed6ee",

	comment         = "#6272a4",

	bg              = "#111119",
	dark_bg         = "#0b0b14",
	fg              = "#dfb7e8",
	dark_fg         = "#b488bf",

	cursor_color    = "#f1c4e0",
	selection_bg    = "#262440",
	selection_fg    = "#ff7ab2",

	git = {
		add           = "#7c60ff",
		delete        = "#de286e",
		change        = "#5d5daf",
	},

	conceal         = "#5d5daf",

	-- TODO: Alot of these to be sorted out.
	border_color    = "#7c60ff",
	border          = "#1d1f2d",
	bg_sidebar      = "#111119",
	fg_gutter       = "#2f3037",
	fg_dark         = "#291f2e",
	mid_dark        = "#2f3037",
	lsp_hint        = "#505079",
	bg_visual       = "#262440",
	bg_popup        = "#0b0b14",
	bg_statusline   = "#1b1b29",
}

return palette
