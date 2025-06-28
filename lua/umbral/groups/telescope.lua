local M = {}

M.url = "https://github.com/nvim-telescope/telescope.nvim"

---@type umbral.HighlightsFn
function M.get(c, opts)
	_ = opts
  -- stylua: ignore
  local ret = {
    TelescopeBorder         = { fg = c.border_highlight, bg = c.bg_float },
    TelescopeNormal         = { fg = c.fg,               bg = c.bg_float },
    TelescopePromptBorder   = { fg = c.magenta,          bg = c.bg_float },
    TelescopePromptTitle    = { fg = c.bright_red,       bg = c.bg_float },
    TelescopeResultsComment = { fg = c.comment },
  }

	return ret
end

return M
