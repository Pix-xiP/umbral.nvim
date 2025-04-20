local util = require("umbral.util")

local M = {}

M.url = "https://github.com/folke/snacks.nvim"

---@type umbral.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local palette = {
    SnacksNotifierDebug         = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderDebug   = { fg = util.blend_bg(c.comment, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconDebug     = { fg = c.comment },
    SnacksNotifierTitleDebug    = { fg = c.comment },
    SnacksNotifierError         = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderError   = { fg = util.blend_bg(c.error, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconError     = { fg = c.error },
    SnacksNotifierTitleError    = { fg = c.error },
    SnacksNotifierInfo          = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderInfo    = { fg = util.blend_bg(c.info, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconInfo      = { fg = c.info },
    SnacksNotifierTitleInfo     = { fg = c.info },
    SnacksNotifierTrace         = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderTrace   = { fg = util.blend_bg(c.primary, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconTrace     = { fg = c.primary },
    SnacksNotifierTitleTrace    = { fg = c.primary },
    SnacksNotifierWarn          = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderWarn    = { fg = util.blend_bg(c.warning, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconWarn      = { fg = c.warning },
    SnacksNotifierTitleWarn     = { fg = c.warning },

    -- Dashboard
    SnacksDashboardDesc         = { fg = c.cyan         },
    SnacksDashboardFooter       = { fg = c.bright_blue  },
    SnacksDashboardHeader       = { fg = c.blue         },
    SnacksDashboardIcon         = { fg = c.bright_blue  },
    SnacksDashboardKey          = { fg = c.orange       },
    SnacksDashboardSpecial      = { fg = c.primary      },
    SnacksDashboardDir          = { fg = c.dark_fg      },

    -- Profiler
    SnacksProfilerIconInfo      = { bg = util.blend_bg(c.bright_blue, 0.3), fg = c.bright_blue },
    SnacksProfilerBadgeInfo     = { bg = util.blend_bg(c.bright_blue, 0.1), fg = c.bright_blue },
    SnacksScratchKey            = "SnacksProfilerIconInfo",
    SnacksScratchDesc           = "SnacksProfilerBadgeInfo",
    SnacksProfilerIconTrace     = { bg = util.blend_bg(c.magenta, 0.3), fg = c.dark_fg },
    SnacksProfilerBadgeTrace    = { bg = util.blend_bg(c.magenta, 0.1), fg = c.dark_fg },
    SnacksIndent                = { fg = c.fg_gutter,   nocombine = true },
    SnacksIndentScope           = { fg = c.bright_blue, nocombine = true },
    SnacksZenIcon               = { fg = c.primary },
    SnacksInputIcon             = { fg = c.bright_blue },
    SnacksInputBorder           = { fg = c.yellow },
    SnacksInputTitle            = { fg = c.yellow },

    -- Picker
    SnacksPickerInputBorder     = { fg = c.border_color, bg = c.bg_float },
    SnacksPickerInputTitle      = { fg = c.red , bg = c.bg_float },
    SnacksPickerBoxTitle        = { fg = c.bright_red, bg = c.bg_float },
    SnacksPickerSelected        = { fg = c.bright_magenta            },
    SnacksPickerToggle          = "SnacksProfilerBadgeInfo",
    SnacksPickerPickWinCurrent  = { fg = c.fg, bg = c.bright_magenta, bold = true },
    SnacksPickerPickWin         = { fg = c.fg, bg = c.bg_search, bold = true      },
  }

	for i, color in ipairs(c.rainbow) do
		palette["SnacksIndent" .. i] = { fg = color, nocombine = true }
	end

	return palette
end

return M
