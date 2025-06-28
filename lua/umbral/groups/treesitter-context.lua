local util = require("umbral.util")

local M = {}

M.url = "https://github.com/nvim-treesitter/nvim-treesitter-context"

---@type umbral.HighlightsFn
function M.get(c, opts)
	_ = opts
  -- stylua: ignore
  local palette = {
    TreesitterContext = { bg = util.blend_bg(c.fg_gutter, 0.8) },
  }

	return palette
end

return M
