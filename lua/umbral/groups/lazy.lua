local M = {}

M.url = "https://github.com/folke/lazy.nvim"

---@type umbral.HighlightsFn
function M.get(c, opts)
	_ = opts
  -- stylua: ignore
  local palette = {
    LazyProgressDone = { fg = c.bright_magenta, bold = true },
    LazyProgressTodo = { fg = c.fg,             bold = true },
  }

	return palette
end

return M
