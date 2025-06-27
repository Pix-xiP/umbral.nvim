local M = {}

M.url = "https://github.com/petertriho/nvim-scrollbar"

---@type umbral.HighlightsFn
function M.get(c, opts)
	_ = opts
  -- stylua: ignore
  local ret = {
    ScrollbarError        = { fg = c.error, bg = c.none           },
    ScrollbarErrorHandle  = { fg = c.error, bg = c.bright_black   },
    ScrollbarHandle       = { fg = c.none, bg = c.bright_black    },
    ScrollbarHint         = { fg = c.hint, bg = c.none            },
    ScrollbarHintHandle   = { fg = c.hint, bg = c.bright_black    },
    ScrollbarInfo         = { fg = c.info, bg = c.none            },
    ScrollbarInfoHandle   = { fg = c.info, bg = c.bright_black    },
    ScrollbarMisc         = { fg = c.cyan, bg = c.none            },
    ScrollbarMiscHandle   = { fg = c.cyan, bg = c.bright_black    },
    ScrollbarSearch       = { fg = c.orange, bg = c.none          },
    ScrollbarSearchHandle = { fg = c.orange, bg = c.bright_black  },
    ScrollbarWarn         = { fg = c.warning, bg = c.none         },
    ScrollbarWarnHandle   = { fg = c.warning, bg = c.bright_black },
  }

	return ret
end

return M
