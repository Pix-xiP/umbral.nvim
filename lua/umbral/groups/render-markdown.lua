local M = {}

M.url = "https://github.com/MeanderingProgrammer/render-markdown.nvim"

---@type umbral.HighlightsFn
function M.get(c, opts)
	_ = opts
  -- stylua: ignore
  local ret = {
    RenderMarkdownBullet     = { fg = c.blue   }, -- horizontal rule
    RenderMarkdownCode       = { bg = c.bg_dark  },
    RenderMarkdownDash       = { fg = c.blue   }, -- horizontal rule
    RenderMarkdownTableHead  = { fg = c.red    },
    RenderMarkdownTableRow   = { fg = c.yellow },
    RenderMarkdownCodeInline = "@markup.raw.markdown_inline"
  }

	for i, color in ipairs(c.rainbow) do
		ret["RenderMarkdownH" .. i .. "Bg"] = { bg = require("umbral.util").blend_bg(color, 0.1) }
		ret["RenderMarkdownH" .. i .. "Fg"] = { fg = color, bold = true }
	end

	return ret
end

return M
