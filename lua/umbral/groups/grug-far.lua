local M = {}

M.url = "https://github.com/MagicDuck/grug-far.nvim"

---@type umbral.HighlightsFn
function M.get(c, opts)
	_ = opts
  -- stylua: ignore
  local palette = {
    GrugFarHelpHeader             = { fg = c.comment              },
    GrugFarHelpHeaderKey          = { fg = c.cyan                 },
    GrugFarInputLabel             = { fg = c.blue                 },
    GrugFarInputPlaceholder       = { fg = c.bright_black         },
    GrugFarResultsChangeIndicator = { fg = c.git.change           },
    GrugFarResultsHeader          = { fg = c.orange               },
    GrugFarResultsLineColumn      = { fg = c.bright_black         },
    GrugFarResultsLineNo          = { fg = c.bright_black         },
    GrugFarResultsMatch           = { fg = c.black, bg = c.red  },
    GrugFarResultsStats           = { fg = c.blue                 },
  }

	return palette
end

return M
