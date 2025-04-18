local M = {}

M.url = "https://github.com/hrsh7th/nvim-cmp"

---@type umbral.HighlightsFn
function M.get(c, opts)
	_ = opts
-- stylua: ignore
  local palette = {
    CmpDocumentation       = { fg = c.fg,           bg = c.bg_float },
    CmpDocumentationBorder = { fg = c.border_color, bg = c.bg_float },
    CmpGhostText           = { fg = c.bright_black                 },
    CmpItemAbbr            = { fg = c.fg,           bg = c.none  },
    CmpItemAbbrDeprecated  = { fg = c.dark_fg,      bg = c.none, strikethrough = true },
    CmpItemAbbrMatch       = { fg = c.blue,         bg = c.none  },
    CmpItemAbbrMatchFuzzy  = { fg = c.blue,         bg = c.none  },
    CmpItemKindCodeium     = { fg = c.orange,       bg = c.none  },
    CmpItemKindCopilot     = { fg = c.orange,       bg = c.none  },
    CmpItemKindSupermaven  = { fg = c.orange,       bg = c.none  },
    CmpItemKindDefault     = { fg = c.dark_fg,      bg = c.none  },
    CmpItemKindTabNine     = { fg = c.bright_cyan,  bg = c.none  },
    CmpItemMenu            = { fg = c.comment,      bg = c.none  },
  }

	require("umbral.groups.kinds").kinds(palette, "CmpItemKind%s")
	return palette
end

return M
