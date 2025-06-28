local M = {}

M.url = "https://github.com/justinmk/vim-sneak"

---@type umbral.HighlightsFn
function M.get(c, opts)
	_ = opts
  -- stylua: ignore
  local palette = {
    Sneak      = { fg = c.yellow,   bg = c.border_color, bold = true },
    SneakScope = { bg = c.bg_visual                                    },
  }

	return palette
end

return M
