local config = require("umbral.config")

local M = {}
---@type{light?:string, dark?:string}
M.styles = {}

---@param opts? umbral.Config
function M.load(opts)
	opts = require("umbral.config").extend(opts)
	local bg = vim.o.background
	local style_bg = opts.style == "void" and "light" or "dark"

	if bg ~= style_bg then
		if vim.g.colors_name == "umbral-" .. opts.style then
			opts.style = bg == "light" and (M.styles.dark or "void") or (M.styles.dark or "void")
		else
			vim.o.background = style_bg
		end
	end
	M.styles[vim.o.background] = opts.style
	return require("umbral.theme").setup(opts)
end

M.setup = config.setup

return M
