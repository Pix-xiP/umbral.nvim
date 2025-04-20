local M = {}

M.url = "https://github.com/ibhagwan/fzf-lua"

---@type umbral.HighlightsFn
function M.get(c)
  -- stylua: ignore
  local palette = {
    FzfLuaBorder        = { bg = c.black, fg = c.border_highlight, },
    FzfLuaCursor        = "IncSearch",
    FzfLuaDirPart       = { fg = c.dark_fg},
    FzfLuaFilePart      = "FzfLuaFzfNormal",
    FzfLuaFzfCursorLine = "Visual",
    FzfLuaFzfNormal     = { fg = c.fg },
    FzfLuaFzfPointer    = { fg = c.bright_magenta},
    FzfLuaFzfSeparator  = { fg = c.bright_red, bg = c.black},
    FzfLuaHeaderBind    = "@punctuation.special",
    FzfLuaHeaderText    = "Title",
    FzfLuaNormal        = { fg = c.fg, bg = c.black},
    FzfLuaPath          = "Directory",
    FzfLuaPreviewTitle  = { fg = c.bright_white, bg = c.black },
    FzfLuaTitle         = { fg = c.bright_red, bg = c.black },
    FzfLuaPathLineNr 	  = { fg = c.magenta, bg = c.black },
    FzfLuaPathColNr 	  = { fg = c.blue },
    FzfLuaBufNr 	      = { fg = c.bright_cyan },
    FzfLuaBufLineNr 	  = { fg = c.bright_cyan },
    FzfLuaTabTitle 	    = { fg = c.bright_cyan },
    FzfLuaTabMarker 	  = { fg = c.cyan},

    -- FzfLuaTitleFlags 	= { }, -- CursorLine 	hls.title_flags 	Main win title flags
    -- FzfLuaBackdrop 	  = { }, -- *bg=Black 	hls.backdrop 	Backdrop color
    -- FzfLuaPreviewNormal 	= { }, -- FzfLuaNormal 	hls.preview_normal 	Builtin preview fg/bg
    -- FzfLuaPreviewBorder 	= { }, -- FzfLuaBorder 	hls.preview_border 	Builtin preview border
    -- FzfLuaCursorLine 	= { }, -- CursorLine 	hls.cursorline 	Builtin preview Cursorline
    -- FzfLuaCursorLineNr 	= { }, -- CursorLineNr 	hls.cursorlinenr 	Builtin preview CursorLineNr
    -- FzfLuaSearch 	= { }, -- IncSearch 	hls.search 	Builtin preview search matches
    -- FzfLuaScrollBorderEmpty 	= { }, -- FzfLuaBorder 	hls.scrollborder_e 	Builtin preview border scroll empty
    -- FzfLuaScrollBorderFull 	= { }, -- FzfLuaBorder 	hls.scrollborder_f 	Builtin preview border scroll full
    -- FzfLuaScrollFloatEmpty 	= { }, -- PmenuSbar 	hls.scrollfloat_e 	Builtin preview float scroll empty
    -- FzfLuaScrollFloatFull 	= { }, -- PmenuThumb 	hls.scrollfloat_f 	Builtin preview float scroll full
    -- FzfLuaHelpNormal 	= { }, -- FzfLuaNormal 	hls.help_normal 	Help win fg/bg
    -- FzfLuaHelpBorder 	= { }, -- FzfLuaBorder 	hls.help_border 	Help win border
    -- FzfLuaBufName 	= { }, -- Directory 	hls.buf_name 	Buffer name (lines)
    -- FzfLuaBufId 	= { }, -- TabLine 	hls.buf_id 	Buffer ID (lines)
    -- FzfLuaBufFlagCur 	= { }, -- *Brown1 	hls.buf_flag_cur 	Buffer line (buffers)
    -- FzfLuaBufFlagAlt 	= { }, -- *CadetBlue1 	hls.buf_flag_alt 	Buffer line (buffers)
    -- FzfLuaDirIcon 	= { }, -- Directory 	hls.dir_icon 	Paths directory icon
    -- FzfLuaLivePrompt 	= { }, -- *PaleVioletRed1 	hls.live_prompt 	"live" queries prompt text
    -- FzfLuaLiveSym 	= { }, -- *PaleVioletRed1 	hls.live_sym 	LSP live symbols query match
    -- FzfLuaFzfMatch 	= { }, -- Special 	fzf.match 	fzf's hl+
    -- FzfLuaFzfBorder 	= { }, -- FzfLuaBorder 	fzf.border 	fzf's border
    -- FzfLuaFzfScrollbar 	= { }, -- FzfLuaFzfBorder 	fzf.scrollbar 	fzf's scrollbar
    -- FzfLuaFzfGutter 	= { }, -- FzfLuaNormal 	fzf.gutter 	fzf's gutter (hl bg is used)
    -- FzfLuaFzfHeader 	= { }, -- FzfLuaTitle 	fzf.header 	fzf's header
    -- FzfLuaFzfInfo 	= { }, -- NonText 	fzf.info 	fzf's info
    -- FzfLuaFzfMarker 	= { }, -- FzfLuaFzfPointer 	fzf.marker 	fzf's marker
    -- FzfLuaFzfSpinner 	= { }, -- FzfLuaFzfPointer 	fzf.spinner 	fzf's spinner
    -- FzfLuaFzfPrompt 	= { }, -- Special 	fzf.prompt 	fzf's prompt
    -- FzfLuaFzfQuery 	= { }, -- FzfLuaNormal 	fzf.query 	fzf's header
  }

	return palette
end

return M
