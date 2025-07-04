local util = require("umbral.util")

local M = {}

-- The base file that contains our color scheme declaration!

---@type umbral.HighlightsFn
function M.get(c, opts)
	_ = opts
  -- stylua: ignore
  local palette = {
    TestVal                     = { bg = c.magenta, fg = c.bg},

    Comment                     = { fg = c.comment, style = opts.styles.comments }, -- any comment
    ColorColumn                 = { bg = c.black }, -- used for the columns set with 'colorcolumn'
    Conceal                     = { fg = c.conceal }, -- placeholder characters substituted for concealed text (see 'conceallevel')

    Cursor                      = { fg = c.bg, bg = c.fg }, -- character under the cursor
    lCursor                     = { fg = c.bg, bg = c.fg }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM                    = { fg = c.bg, bg = c.fg }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn                = { bg = c.selection_bg },    -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine                  = { bg = c.selection_bg },    -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory                   = { fg = c.bright_magenta }, -- directory names (and other special names in listings)
    DiffAdd                     = { bg = c.diff.add }, -- diff mode: Added line |diff.txt|
    DiffChange                  = { bg = c.diff.change }, -- diff mode: Changed line |diff.txt|
    DiffDelete                  = { bg = c.diff.delete }, -- diff mode: Deleted line |diff.txt|
    DiffText                    = { bg = c.diff.text }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer                 = { fg = c.bg }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    ErrorMsg                    = { fg = c.error }, -- error messages on the command line
    VertSplit                   = { fg = c.blue, bold = true }, -- the column separating vertically split windows
    WinSeparator                = { fg = c.blue, bold = true }, -- the column separating vertically split windows
    Folded                      = { fg = c.blue, bg = c.fg_gutter }, -- line used for closed folds
    FoldColumn                  = { bg = opts.transparent and c.none or c.bg, fg = c.comment }, -- 'foldcolumn'
    SignColumn                  = { bg = opts.transparent and c.none or c.bg, fg = c.comment }, -- column where |signs| are displayed
    SignColumnSB                = { bg = c.bg_sidebar, fg = c.fg }, -- column where |signs| are displayed
    Substitute                  = { bg = c.bright_red, fg = c.black }, -- |:substitute| replacement text highlighting
    LineNr                      = { fg = c.fg_gutter }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr                = { fg = c.bright_red, bold = true }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    LineNrAbove                 = { fg = c.bright_black }, -- TODO: perhaps we use a version of the lsp_hint here?
    LineNrBelow                 = { fg = c.bright_black },
    MatchParen                  = { fg = c.bright_red, bold = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg                     = { fg = c.bright_black, bold = true }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea                     = { fg = c.comment}, -- Area for messages and cmdline
    MoreMsg                     = { fg = c.red}, -- |more-prompt|
    NonText                     = { fg = c.mid_dark}, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal                      = { fg = c.fg, bg = opts.transparent and c.none or c.bg }, -- normal text
    NormalNC                    = { fg = c.fg, bg = opts.transparent and c.none or opts.dim_inactive and c.dark_bg or c.bg }, -- normal text in non-current windows
    NormalSB                    = { fg = c.cursor_color, bg = c.bg_sidebar }, -- normal text in sidebar
    NormalFloat                 = { fg = c.yellow,  bg = c.black }, -- Normal text in floating windows.
    FloatBorder                 = { fg = c.magenta, bg = c.black},
    FloatTitle                  = { fg = c.red, bg = c.black },
    Pmenu                       = { bg = c.bg, fg = c.fg }, -- Popup menu: normal item.
    PmenuMatch                  = { bg = c.bg, fg = c.bright_magenta}, -- Popup menu: Matched text in normal item.
    PmenuSel                    = { bg = util.blend_bg(c.fg_gutter, 0.8) }, -- Popup menu: selected item.
    PmenuMatchSel               = { bg = util.blend_bg(c.fg_gutter, 0.8), fg = c.blue }, -- Popup menu: Matched text in selected item.
    PmenuSbar                   = { bg = util.blend_fg(c.bg , 0.95) }, -- Popup menu: scrollbar.
    PmenuThumb                  = { bg = c.fg_gutter }, -- Popup menu: Thumb of the scrollbar.
    Question                    = { fg = c.blue }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine                = { bg = c.blue, bold = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search                      = { bg = c.bright_magenta, fg = c.black }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch                   = { bg = c.bright_magenta, fg = c.black }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    CurSearch                   =  "IncSearch",
    SpecialKey                  = { fg = c.mid_dark}, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad                    = { sp = c.error,   undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap                    = { sp = c.warning, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal                  = { sp = c.info,    undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare                   = { sp = c.hint,    undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine                  = { fg = c.yellow,    bg = c.bg_statusline }, -- status line of current window
    StatusLineNC                = { bg = c.bg_statusline, fg = c.dark_fg }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine                     = { bg = c.bg_statusline, fg = c.dark_fg }, -- tab pages line, not active tab page label
    TabLineFill                 = { bg = c.black }, -- tab pages line, where there are no labels
    TabLineSel                  = { fg = c.black, bg = c.blue }, -- tab pages line, active tab page label
    Title                       = { fg = c.blue, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
    Visual                      = { bg = c.selection_bg }, -- Visual mode selection
    VisualNOS                   = { bg = c.selection_bg }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg                  = { fg = c.warning }, -- warning messages
    Whitespace                  = { fg = c.fg_gutter }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu                    = { bg = c.bg_visual }, -- current match in 'wildmenu' completion
    WinBar                      = "StatusLine" , -- window bar
    WinBarNC                    = "StatusLineNC", -- window bar in inactive windows

    -- Basic values for your generic code highlighting!
    Bold                        = { fg = c.fg, bold = true }, -- (preferred) any bold text
    Character                   = { fg = c.orange}, --  a character constant: 'c', '\n'
    Constant                    = { fg = c.red }, -- (preferred) any constant
    Debug                       = { fg = c.magenta}, --    debugging statements
    Delimiter                   =  "Special", --  character that needs attention
    Error                       = { fg = c.error }, -- (preferred) any erroneous construct
    Function                    = { fg = c.blue,    style = opts.styles.functions }, -- function name (also: methods for classes)
    Identifier                  = { fg = c.magenta, style = opts.styles.variables }, -- (preferred) any variable name
    Italic                      = { fg = c.fg,      italic = true }, -- (preferred) any italic text
    Keyword                     = { fg = c.magenta,        style = opts.styles.keywords }, --  any other keyword TODO: does this hurt?
    Operator                    = { fg = c.orange}, -- "sizeof", "+", "*", etc.
    PreProc                     = { fg = c.bright_cyan}, -- (preferred) generic Preprocessor
    Special                     = { fg = c.bright_blue}, -- (preferred) any special symbol
    Statement                   = { fg = c.magenta }, -- (preferred) any statement
    String                      = { fg = c.primary }, -- a string constant: "this is a string"
    Todo                        = { bg = c.yellow, fg = c.bg }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Type                        = { fg = c.bright_blue}, -- (preferred) int, long, char, etc.:
    Underlined                  = { underline = true }, -- (preferred) text that stands out, HTML links
    debugBreakpoint             = { bg = util.blend_bg(c.info, 0.1), fg = c.info }, -- used for breakpoint colors in terminal-debug
    debugPC                     = { bg = c.bg_sidebar }, -- used for highlighting the current line in terminal-debug
    dosIniLabel                 = "@property",
    helpCommand                 = { bg = c.black, fg = c.blue },
    htmlH1                      = { fg = c.magenta, bold = true },
    htmlH2                      = { fg = c.blue, bold = true },
    qfFileName                  = { fg = c.blue },
    qfLineNr                    = { fg = c.bright_black},

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own.
    LspReferenceText            = { bg = c.fg_gutter }, -- used for highlighting "text" references
    LspReferenceRead            = { bg = c.fg_gutter }, -- used for highlighting "read" references
    LspReferenceWrite           = { bg = c.fg_gutter }, -- used for highlighting "write" references
    LspSignatureActiveParameter = { bg = util.blend_bg(c.bg, 0.4), bold = true },
    LspCodeLens                 = { fg = c.comment },
    LspInlayHint                = { bg = util.blend_bg(c.bg, 0.1), fg = c.lsp_hint},
    LspInfoBorder               = { fg = c.bright_red, bg = c.bg_float },

    -- diagnostics
    DiagnosticError             = { fg = c.error },       -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticWarn              = { fg = c.warning },     -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticInfo              = { fg = c.info },        -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticHint              = { fg = c.hint },        -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticUnnecessary       = { fg = c.bright_black}, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticVirtualTextError  = { fg = c.error,   bg = util.blend_bg(c.error,   0.1)}, -- Used for "Error" diagnostic virtual text
    DiagnosticVirtualTextWarn   = { fg = c.warning, bg = util.blend_bg(c.warning, 0.1)}, -- Used for "Warning" diagnostic virtual text
    DiagnosticVirtualTextInfo   = { fg = c.info,    bg = util.blend_bg(c.info,    0.1)}, -- Used for "Information" diagnostic virtual text
    DiagnosticVirtualTextHint   = { fg = c.hint,    bg = util.blend_bg(c.hint,    0.1)}, -- Used for "Hint" diagnostic virtual text
    DiagnosticUnderlineError    = { undercurl = true, sp = c.error },   -- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn     = { undercurl = true, sp = c.warning }, -- Used to underline "Warning" diagnostics
    DiagnosticUnderlineInfo     = { undercurl = true, sp = c.info },    -- Used to underline "Information" diagnostics
    DiagnosticUnderlineHint     = { undercurl = true, sp = c.hint },    -- Used to underline "Hint" diagnostics

    -- Health
    healthError                 = { fg = c.error },
    healthSuccess               = { fg = c.bright_magenta},
    healthWarning               = { fg = c.warning },

    -- diff (not needed anymore?)
    diffAdded                   = { bg = c.diff.add, fg = c.git.add },
    diffRemoved                 = { bg = c.diff.delete, fg = c.git.delete },
    diffChanged                 = { bg = c.diff.change, fg = c.git.change },
    diffOldFile                 = { fg = c.bright_cyan, bg=c.diff.delete },
    diffNewFile                 = { fg = c.bright_cyan, bg=c.diff.add },
    diffFile                    = { fg = c.blue },
    diffLine                    = { fg = c.comment },
    diffIndexLine               = { fg = c.magenta },
    helpExample                 = { fg = c.comment },
  }

	return palette
end

return M
