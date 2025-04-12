local M = {}

M.version = "0.1.0"

---@class umbral.Config
---@field on_colors fun(colors: ColorScheme)
---@field on_highlights fun(highlights: umbral.Highlights, colors: ColorScheme)
M.defaults = {
	style = "void",
	transparent = false,
	terminal_colors = true, -- configure colors used when opening a `:term` in nvim
	styles = {
		-- syntax group styles
		-- :help nvim_set_hl -- value is valid attr-list value
		comments = { italic = true },
		keywords = { italic = false },
		functions = {},
		variables = {},

		-- background styles, "dark", "transparent," "normal"
		sidebars = "dark",
		floats = "dark",
	},
	day_brightness = 0.3,
	dim_inactive = false, -- dims inactive windows
	lualine_bold = false, -- when 'true', section headers in the lualine theme will be bold

	-- override specific color groups to use other groups or hex
	-- functino will be called with a ColorScheme table
	---@param colors ColorScheme
	on_colors = function(colors) end,

	--- override specific highlights to use other groups or hex
	--- function will be called with a Highlights and ColorScheme table
	---@param highlights umbral.Highlights
	---@param colors ColorScheme
	on_highlights = function(highlights, colors) end,

	cache = false, -- when true, the theme caches for better perf

	---@type table<string, boolean|{enabled:boolean}>
	plugins = {
		-- enable all plugins when not using lazy.nvim
		-- set to false to manually enable/disable
		all = package.loaded.lazy == nil,
		-- uses your plugin manager to automatically enable needed plugins
		-- currently only lazy.nvim is supported
		auto = true,
	},
}

---@type umbral.Config
M.options = nil

---@param options? umbral.Config
function M.setup(options)
	M.options = vim.tbl_deep_extend("force", {}, M.options, options) or M.options
end

---@param opts? umbral.Config
function M.extend(opts)
	return opts and vim.tbl_deep_extend("force", {}, M.options, opts) or M.options
end

setmetatable(M, {
	__index = function(_, k)
		if k == "options" then
			return M.defaults
		end
	end,
})

return M
