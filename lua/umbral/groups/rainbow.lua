local M = {}

M.url = "https://github.com/HiPhish/rainbow-delimiters.nvim"

---@type umbral.HighlightsFn
function M.get(c, opts)
	_ = opts
  -- stylua: ignore
  local palette = {
    -- rainbow-delimiters
		RainbowDelimiterCyan    = { fg = c.cyan     },
		RainbowDelimiterViolet  = { fg = c.magenta  },
		RainbowDelimiterGreen   = { fg = c.primary  },
		RainbowDelimiterBlue    = { fg = c.blue,    },
		RainbowDelimiterYellow  = { fg = c.yellow   },
		RainbowDelimiterOrange  = { fg = c.orange   },
		RainbowDelimiterRed     = { fg = c.red      },
  }

	return palette
end

return M
