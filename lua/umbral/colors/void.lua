---@class Palette
-- stylua: ignore
local palette = {
	black           = "#0a0214",
	red             = "#da3c69",
	primary         = "#7644fa", -- green
	yellow          = "#ffd369",
	blue            = "#6422d8",
	magenta         = "#6c4dff",
	cyan            = "#3848f8",
	white           = "#9971c1",
	bright_black    = "#414262",
	bright_red      = "#be3888",
	orange          = "#e9729d", -- bright green
	bright_yellow   = "#ffd369",
	bright_blue     = "#8c6dff",
	bright_magenta  = "#9933dd",
	bright_cyan     = "#586afa",
	bright_white    = "#b99de1",

	comment         = "#6863a6",

	bg              = "#151022",
	dark_bg         = "#0A0214",
	fg              = "#9971c1",
	dark_fg         = "#7a4baa",

	cursor_color    = "#b99de1",
	selection_bg    = "#1c0655", -- #1c0638 original
	selection_fg    = "#ee6699",

	git = {
		add           = "#4129a1",
		delete        = "#da3c69",
		change        = "#6122d8",
	},

	conceal         = "#4129a1",

	-- TODO: Alot of these to be sorted out.
	border_color    = "#6422d8",
	border          = "#1d202f",
	bg_sidebar      = "#111119",
	fg_gutter       = "#221a37",
	fg_dark         = "#291f2e",
	mid_dark        = "#2f3037",
	lsp_hint        = "#404099",
	bg_visual       = "#442198",
	bg_popup        = "#0a0214",
	bg_statusline   = "#1f2335",
}

return palette
