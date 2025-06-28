local M = {}

M.url = "https://github.com/echasnovski/mini.notify"

---@type umbral.HighlightsFn
function M.get(c, opts)
	_ = c
	_ = opts
  -- stylua: ignore
  local palette = {
    MiniNotifyBorder = "FloatBorder",
    MiniNotifyNormal = "NormalFloat",
    MiniNotifyTitle = "FloatTitle",
  }

	return palette
end

return M
