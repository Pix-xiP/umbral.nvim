local M = {}

M.url = "https://github.com/folke/flash.nvim"

---@type umbral.HighlightsFn
function M.get(c, opts)
	_ = opts
  -- stylua: ignore
  return {
    FlashBackdrop = { fg = c.comment },
    FlashLabel    = { fg = c.yellow, bg = c.border_color, bold = true },
  }
end

return M
