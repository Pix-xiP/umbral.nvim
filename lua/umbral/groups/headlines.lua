local M = {}

M.url = "https://github.com/lukas-reineke/headlines.nvim"

---@type umbral.HighlightsFn
function M.get(c, opts)
	_ = opts
  -- stylua: ignore
  local palette = {
    CodeBlock = { bg = c.dark_bg },
    Headline  = "Headline1",
  }

	for i, color in ipairs(c.rainbow) do
		palette["Headline" .. i] = { bg = require("umbral.util").blend_bg(color, 0.05) }
	end

	return palette
end

return M
