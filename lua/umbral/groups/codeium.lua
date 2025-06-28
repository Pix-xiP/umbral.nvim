local M = {}

M.url = "https://github.com/Exafunction/codeium.nvim"

---@type umbral.HighlightsFn
function M.get(c, opts)
	_ = opts
  -- stylua: ignore
  local palette = {
    CodeiumSuggestion = { fg = c.terminal.black_bright},
  }

	return palette
end

return M
