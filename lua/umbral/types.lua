---@class umbral.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias umbral.Highlights table<string,umbral.Highlight|string>
---@alias umbral.HighlightsFn fun(colors: ColorScheme, opts:umbral.Config):umbral.Highlights

---@class umbral.Cache
---@field groups umbral.Highlights
---@field inputs table
