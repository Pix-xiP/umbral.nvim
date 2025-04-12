local util = require("umbral.util")

local M = {}

---@type table<string, Palette|fun(opts:umbral.Config):Palette>
M.styles = setmetatable({}, {
	__index = function(_, style)
		return vim.deepcopy(util.mod("umbral.colors." .. style))
	end,
})

---@param opts? umbral.Config
function M.setup(opts)
	opts = require("umbral.config").extend(opts)

	util.day_brightness = opts.day_brightness

	local palette = M.styles[opts.style]
	if type(palette) == "function" then
		palette = palette(opts) --[[@as Palette]]
	end

	-- Color Palette
	---@class ColorScheme: Palette
	local colors = palette

	util.bg = colors.bg
	util.fg = colors.fg

	colors.none = "NONE"

	colors.diff = {
		add = util.blend_bg(colors.green, 0.15),
		delete = util.blend_bg(colors.red, 0.15),
		change = util.blend_bg(colors.blue, 0.15),
		text = colors.bright_blue,
	}

	colors.git.ignore = colors.comment
	colors.black = util.blend_bg(colors.bg, 0.8, "#000000")
	colors.border_highlight = util.blend_bg(colors.blue, 0.8)
	colors.border = colors.black

	-- popups and statusline always get a dark background
	colors.bg_popup = colors.dark_bg
	colors.bg_statusline = colors.dark_bg

	-- Sidebar and floats are configruable
	colors.bg_sidebar = opts.styles.sidebar == "transparent" and colors.none
		or opts.styles.sidebar == "dark" and colors.dark_bg
		or colors.bg

	colors.bg_float = opts.styles.floats == "transparent" and colors.none
		or opts.styles.floats == "dark" and colors.dark_bg
		or colors.bg

	colors.bg_visual = util.blend_bg(colors.cyan, 0.4)
	colors.bg_search = colors.cyan
	colors.fg_sidebar = colors.dark_fg
	colors.fg_flaot = colors.fg

	colors.error = colors.red
	colors.todo = colors.bright_cyan
	colors.warning = colors.yellow
	colors.info = colors.cyan
	colors.hint = colors.blue

	colors.rainbow = {
		colors.green,
		colors.magenta,
		colors.blue,
		colors.cyan,
		colors.bright_blue,
		colors.yellow,
		colors.bright_red,
		colors.red,
	}

  -- stylua: ignore
  ---@class TerminalColors
	colors.terminal = {
		black          = colors.black,
		black_bright   = colors.bright_black,
		red            = colors.red,
		red_bright     = colors.bright_red,
    green          = colors.green,
    green_bright   = util.brighten(colors.green),
    yellow         = colors.yellow,
    yellow_bright  = util.brighten(colors.yellow),
    blue           = colors.blue,
    blue_bright    = util.brighten(colors.blue),
    magenta        = colors.magenta,
    magenta_bright = util.brighten(colors.magenta),
    cyan           = colors.cyan,
    cyan_bright    = util.brighten(colors.cyan),
    white          = colors.white,
    white_bright   = colors.bright_white,
	}

	opts.on_colors(colors)

	return colors, opts
end

return M
