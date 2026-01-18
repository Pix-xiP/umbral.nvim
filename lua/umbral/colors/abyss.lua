---@class Palette
-- stylua: ignore
local palette = { -- thoughts added as comments, WIP.
	black           = "#090113",
	red             = "#db4d78",
	primary         = "#7d55f5", -- core purple lifted for readability
	yellow          = "#ffd884", -- softer yellow for longer sessions
	blue            = "#5f2fe0",
	magenta         = "#7c60ff",
	cyan            = "#4760fa",
	white           = "#b08ad8",
	bright_black    = "#4a4769",
	bright_red      = "#c1428f",
	orange          = "#e98fb2",
	bright_yellow   = "#ffd884",
	bright_blue     = "#8b70ff",
	bright_magenta  = "#9a41e6",
	bright_cyan     = "#6a7bff",
	bright_white    = "#c9aee8",

	comment         = "#7b6fb0",

	bg              = "#171128", -- slightly lifted to reduce eye strain
	dark_bg         = "#0b0416",
	fg              = "#b08ad8", -- higher contrast without harshness
	dark_fg         = "#8d69b7",

	cursor_color    = "#c9aee8",
	selection_bg    = "#24103f",
	selection_fg    = "#f087b2",

	git = {
		add           = "#4b34b4",
		delete        = "#db4d78",
		change        = "#5c2fe0",
	},

	conceal         = "#4b34b4",

	-- TODO: Alot of these to be sorted out.
	border_color    = "#5f2fe0",
	border          = "#1d1b2a",
	bg_sidebar      = "#121120",
	fg_gutter       = "#2a233b",
	fg_dark         = "#2e2436",
	mid_dark        = "#32303f",
	lsp_hint        = "#4b4db3",
	bg_visual       = "#4a2aa0",
	bg_popup        = "#0b0416",
	bg_statusline   = "#232334",
}

return palette
