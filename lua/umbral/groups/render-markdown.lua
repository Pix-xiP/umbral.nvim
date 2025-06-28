local M = {}

M.url = "https://github.com/MeanderingProgrammer/render-markdown.nvim"

---@type umbral.HighlightsFn
function M.get(c, opts)
	_ = opts
  -- stylua: ignore
  local palette = {
    RenderMarkdownBullet     = { fg = c.blue    }, -- horizontal rule
    RenderMarkdownCode       = { bg = c.dark_bg },
    RenderMarkdownDash       = { fg = c.blue    }, -- horizontal rule
    RenderMarkdownTableHead  = { fg = c.red     },
    RenderMarkdownTableRow   = { fg = c.yellow  },
    RenderMarkdownCodeInline = "@markup.raw.markdown_inline"
  }

	for i, color in ipairs(c.rainbow) do
		palette["RenderMarkdownH" .. i .. "Bg"] = { bg = require("umbral.util").blend_bg(color, 0.1) }
		palette["RenderMarkdownH" .. i .. "Fg"] = { fg = color, bold = true }
	end

	return palette
end

return M
