local M = {}

M.url = "https://github.com/folke/flash.nvim"

---@type umbral.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    FlashBackdrop = { fg = c.bg },
    FlashLabel    = { bg = c.magenta, bold = true, fg = c.fg },
  }
end

return M
