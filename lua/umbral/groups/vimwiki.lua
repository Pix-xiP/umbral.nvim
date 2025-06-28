local M = {}

M.url = "https://github.com/vimwiki/vimwiki"

---@type umbral.HighlightsFn
function M.get(c, opts)
	_ = opts
  -- stylua: ignore
  local palette = {
    VimwikiLink =       { fg = c.bright_cyan, bg = c.none },
    VimwikiHeaderChar = { fg = c.yellow, bg = c.none },
    VimwikiHR =         { fg = c.yellow, bg = c.none },
    VimwikiList =       { fg = c.orange, bg = c.none },
    VimwikiTag =        { fg = c.cyan, bg = c.none },
    VimwikiMarkers =    { fg = c.bright_cyan, bg = c.none },
  }

	for i, color in ipairs(c.rainbow) do
		palette["VimwikiHeader" .. i] = { fg = color, bg = c.none, bold = true }
	end

	return palette
end

return M
