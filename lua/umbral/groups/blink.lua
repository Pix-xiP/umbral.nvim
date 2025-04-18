local M = {}

M.url = "https://github.com/Saghen/blink.cmp"

---@type umbral.HighlightsFn
function M.get(c, opts)
	_ = opts
  -- stylua: ignore
  local palette = {
    BlinkCmpDoc                 = { fg = c.fg,                bg = c.bg_float },
    BlinkCmpDocBorder           = { fg = c.border_color ,     bg = c.bg_float },
    BlinkCmpGhostText           = { fg = c.bright_black },
    BlinkCmpKindCodeium         = { fg = c.orange,            bg = c.none },
    BlinkCmpKindCopilot         = { fg = c.orange,            bg = c.none },
    BlinkCmpKindDefault         = { fg = c.fg_dark,           bg = c.none },
    BlinkCmpKindSupermaven      = { fg = c.orange,            bg = c.none },
    BlinkCmpKindTabNine         = { fg = c.orange,            bg = c.none },
    BlinkCmpLabel               = { fg = c.fg,                bg = c.none },
    BlinkCmpLabelDeprecated     = { fg = c.dark_fg,           bg = c.none, strikethrough = true },
    BlinkCmpLabelMatch          = { fg = c.blue,              bg = c.none },
    BlinkCmpMenu                = { fg = c.fg,                bg = c.bg_float },
    BlinkCmpMenuBorder          = { fg = c.border_highlight,  bg = c.bg_float },
    BlinkCmpSignatureHelp       = { fg = c.fg,                bg = c.bg_float },
    BlinkCmpSignatureHelpBorder = { fg = c.border_highlight,  bg = c.bg_float },
  }

	require("umbral.groups.kinds").kinds(palette, "BlinkCmpKind%s")
	return palette
end

return M
