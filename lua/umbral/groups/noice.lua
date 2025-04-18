local M = {}

M.url = "https://github.com/folke/noice.nvim"

---@type umbral.HighlightsFn
function M.get(c, opts)
	_ = opts
  -- stylua: ignore
  local palette = {
    NoiceCmdlineIconInput          = { fg = c.yellow                  },
    NoiceCmdlineIconLua            = { fg = c.blue                    },
    NoiceCmdlinePopupBorderInput   = { fg = c.yellow                  },
    NoiceCmdlinePopupBorderLua     = { fg = c.blue                    },
    NoiceCmdlinePopupTitleInput    = { fg = c.yellow                  },
    NoiceCmdlinePopupTitleLua      = { fg = c.blue                    },
    NoiceCompletionItemKindDefault = { fg = c.dark_fg, bg = c.none  },
  }

	require("umbral.groups.kinds").kinds(palette, "NoiceCompletionItemKind%s")

	return palette
end

return M
