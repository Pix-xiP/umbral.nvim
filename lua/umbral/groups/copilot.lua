local M = {}

M.url = "https://github.com/zbirenbaum/copilot.lua"

---@type umbral.HighlightsFn
function M.get(c, opts)
	_ = opts
  -- stylua: ignore
  local ret = {
    CopilotAnnotation = { fg = c.terminal.black_bright },
    CopilotSuggestion = { fg = c.terminal.black_bright },
  }

	return ret
end

return M
