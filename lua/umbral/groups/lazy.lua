local M = {}

M.url = "https://github.com/folke/lazy.nvim"

---@type umbral.HighlightsFn
function M.get(c, opts)
	_ = opts
  -- stylua: ignore
  local pallete = {
    LazyProgressDone = { fg = c.bright_magenta, bold = true },
    LazyProgressTodo = { fg = c.fg,             bold = true },
  }
	return pallete
end

return M
