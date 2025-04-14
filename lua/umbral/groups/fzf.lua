local M = {}

M.url = "https://github.com/ibhagwan/fzf-lua"

---@type umbral.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    FzfLuaBorder        = { fg = c.border_highlight, bg = c.black},
    FzfLuaCursor        = "IncSearch",
    FzfLuaDirPart       = { fg = c.dark_fg},
    FzfLuaFilePart      = "FzfLuaFzfNormal",
    FzfLuaFzfCursorLine = "Visual",
    FzfLuaFzfNormal     = { fg = c.fg },
    FzfLuaFzfPointer    = { fg = c.bright_magenta},
    FzfLuaFzfSeparator  = { fg = c.bright_red, bg = c.black},
    -- FzfLuaFzfSeparator  = { fg = c.orange, bg = c.black },
    FzfLuaHeaderBind    = "@punctuation.special",
    FzfLuaHeaderText    = "Title",
    FzfLuaNormal        = { fg = c.fg, bg = c.black},
    FzfLuaPath          = "Directory",
    FzfLuaPreviewTitle  = { fg = c.bright_white, bg = c.black },
    FzfLuaTitle         = { fg = c.bright_red, bg = c.black },
  }
end

return M
