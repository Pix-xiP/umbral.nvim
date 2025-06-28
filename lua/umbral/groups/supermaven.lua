local M = {}

M.url = "https://github.com/supermaven-inc/supermaven-nvim"

---@type umbral.HighlightsFn
function M.get(c, opts)
	_ = opts
  -- stylua: ignore
  local palette = {
    SupermavenSuggestion = { fg = c.terminal.black_bright},
  }
	return palette
end

return M
