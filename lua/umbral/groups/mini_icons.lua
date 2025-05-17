local M = {}

M.url = "https://github.com/echasnovski/mini.icons"

---@type umbral.HighlightsFn
function M.get(c, opts)
	_ = opts
  -- stylua: ignore 
  return {
    MiniIconsGrey   = { fg = c.fg },
    MiniIconsPurple = { fg = c.magenta },
    MiniIconsBlue   = { fg = c.blue },
    MiniIconsAzure  = { fg = c.cyan},
    MiniIconsCyan   = { fg = c.bright_cyan},
    MiniIconsGreen  = { fg = c.primary },
    MiniIconsYellow = { fg = c.yellow },
    MiniIconsOrange = { fg = c.orange },
    MiniIconsRed    = { fg = c.red },
  }
end

return M
