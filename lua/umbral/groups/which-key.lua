local M = {}

M.url = "https://github.com/folke/which-key.nvim"

---@type umbral.HighlightsFn
function M.get(c, opts)
	_ = opts
  -- stylua: ignore
  return {
    WhichKey          = { bg = c.black, fg = c.yellow},
    WhichKeyGroup     = { bg = c.black, fg = c.cyan,},
    WhichKeyDesc      = { bg = c.black, fg = c.magenta },
    WhichKeySeparator = { bg = c.black, fg = c.comment },
    WhichKeyNormal    = { bg = c.black },
    WhichKeyValue     = { bg = c.black, fg = c.dark_fg},
  }
end

return M
