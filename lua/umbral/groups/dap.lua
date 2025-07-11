local M = {}

M.url = "https://github.com/mfussenegger/nvim-dap"

---@type umbral.HighlightsFn
function M.get(c, opts)
	_ = opts
  -- stylua: ignore
  local palette = {
    -- Used for "Warning" diagnostic virtual text
    DapStoppedLine = { bg = require("umbral.util").blend_bg(c.warning, 0.1) },
  }

	return palette
end

return M
