local M = {}

M.url = "https://github.com/folke/which-key.nvim"

---@type umbral.HighlightsFn
function M.get(c, opts)
	_ = opts
  -- stylua: ignore
  return {
    WhichKey          = { bg = c.black, fg = c.cyan },
    WhichKeyGroup     = { bg = c.black, fg = c.blue,},
    WhichKeyDesc      = { bg = c.black, fg = c.magenta },
    WhichKeySeparator = { bg = c.black, fg = c.comment },
    WhichKeyNormal    = { bg = c.bg_sidebar },
    WhichKeyValue     = { bg = c.black, fg = c.black},
  }
end

return M
