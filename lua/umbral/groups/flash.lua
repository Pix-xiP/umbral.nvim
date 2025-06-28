local M = {}

M.url = "https://github.com/folke/flash.nvim"

---@type umbral.HighlightsFn
function M.get(c, opts)
	_ = opts
  -- stylua: ignore
  local palette = {
    FlashBackdrop = { fg = c.comment },
    FlashLabel    = { fg = c.yellow, bg = c.border_color, bold = true },
  }

	return palette
end

return M
