local M = {}

M.url = "https://github.com/supermaven-inc/supermaven-nvim"

---@type umbral.HighlightsFn
function M.get(c, opts)
	_ = opts
  -- stylua: ignore
  local ret = {
    SupermavenSuggestion = { fg = c.terminal.black_bright},
  }
	return ret
end

return M
