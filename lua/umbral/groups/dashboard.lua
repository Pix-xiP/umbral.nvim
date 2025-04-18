local M = {}

M.url = "https://github.com/nvimdev/dashboard-nvim"

---@type umbral.HighlightsFn
function M.get(c, opts)
	_ = opts
  -- stylua: ignore
  local palette = {
    -- generic
    DashboardHeader           = { fg = c.blue               },
    DashboardFooter           = { fg = c.magenta            },

    -- hyper 
    DashboardProjectTitle     = { fg = c.blue, bold = true  },
    DashboardProjectTitleIcon = { fg = c.orange             },
    DashboardProjectIcon      = { fg = c.yellow             },
    DashboardMruTitle         = { fg = c.blue               },
    DashboardMruIcon          = { fg = c.primary            },
    DashboardFiles            = { fg = c.bright_blue        },
    DashboardShortCutIcon     = { fg = c.magenta            },

    -- doom
    DashboardDesc             = { fg = c.magenta            },
    DashboardKey              = { fg = c.orange             },
    DashboardIcon             = { fg = c.magenta            },
    DashboardShortCut         = { fg = c.cyan               },
  }
	return palette
end

return M
