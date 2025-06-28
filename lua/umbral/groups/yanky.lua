local M = {}

M.url = "https://github.com/gbprod/yanky.nvim"

---@type umbral.HighlightsFn
function M.get(c, opts)
	_ = c
	_ = opts
  -- stylua: ignore
  local palette = {
    YankyPut    = "Search",
    YankyYanked = "IncSearch",
  }

	return palette
end

return M
