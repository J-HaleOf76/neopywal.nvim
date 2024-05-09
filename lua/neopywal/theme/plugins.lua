-- vim:fileencoding=utf-8:foldmethod=marker

local M = {}

M.get = function(colors, options)
	local theme = {
		--: neoclide/coc.nvim {{{
		CocHighlightText             = { bold = true },
		CocHoverRange                = { bold = true, underline = true },
		CocHintHighlight             = { fg = colors.color2, undercurl = true },
		CocErrorFloat                = { bg = colors.color8, fg = colors.color1 },
		CocWarningFloat              = { bg = colors.color8, fg = colors.color3 },
		CocInfoFloat                 = { bg = colors.color8, fg = colors.color4 },
		CocHintFloat                 = { bg = colors.color8, fg = colors.color2 },
		CocCodeLens                  = { fg = colors.color8 },
		CocErrorSign                 = { link = "ALEErrorSign" },
		CocWarningSign               = { link = "ALEWarningSign" },
		CocInfoSign                  = { link = "ALEInfoSign" },
		CocHintSign                  = { link = "Label" },
		CocErrorHighlight            = { link = "ALEError" },
		CocWarningHighlight          = { link = "ALEWarning" },
		CocInfoHighlight             = { link = "ALEInfo" },
		CocWarningVirtualText        = { link = "ALEVirtualTextWarning" },
		CocErrorVirtualText          = { link = "ALEVirtualTextError" },
		CocInfoVirtualText           = { link = "ALEVirtualTextInfo" },
		CocHintVirtualText           = { link = "ALEVirtualTextInfo" },
		CocGitAddedSign              = { link = "GitGutterAdd" },
		CocGitChangeRemovedSign      = { link = "GitGutterChangeDelete" },
		CocGitChangedSign            = { link = "GitGutterChange" },
		CocGitRemovedSign            = { link = "GitGutterDelete" },
		CocGitTopRemovedSign         = { link = "GitGutterDelete" },
		CocExplorerBufferRoot        = { fg = colors.color1 },
		CocExplorerBufferExpandIcon  = { fg = colors.color4 },
		CocExplorerBufferBufnr       = { fg = colors.color3 },
		CocExplorerBufferModified    = { fg = colors.color1 },
		CocExplorerBufferBufname     = { fg = colors.color8 },
		CocExplorerBufferFullpath    = { fg = colors.color8 },
		CocExplorerFileRoot          = { fg = colors.color1 },
		CocExplorerFileExpandIcon    = { fg = colors.color4 },
		CocExplorerFileFullpath      = { fg = colors.color8 },
		CocExplorerFileDirectory     = { fg = colors.color2 },
		CocExplorerFileGitStage      = { fg = colors.color4 },
		CocExplorerFileGitUnstage    = { fg = colors.color3 },
		CocExplorerFileSize          = { fg = colors.color4 },
		CocExplorerTimeAccessed      = { fg = colors.color5 },
		CocExplorerTimeCreated       = { fg = colors.color5 },
		CocExplorerTimeModified      = { fg = colors.color5 },
		CocExplorerFileRootName      = { fg = colors.color11 },
		CocExplorerBufferNameVisible = { fg = colors.color2 },
		--: }}}
		--: dense-analysis/ale {{{
		ALEError                   = { fg = colors.color1, undercurl = true },
		ALEWarning                 = { fg = colors.color3, undercurl = true },
		ALEInfo                    = { fg = colors.color4, undercurl = true },
		ALEErrorSign               = { fg = colors.color1 },
		ALEWarningSign             = { fg = colors.color3 },
		ALEInfoSign                = { fg = colors.color4 },
		ALEVirtualTextError        = { fg = colors.color8 },
		ALEVirtualTextWarning      = { fg = colors.color8 },
		ALEVirtualTextInfo         = { fg = colors.color8 },
		ALEVirtualTextStyleError   = { link = "ALEVirtualTextError" },
		ALEVirtualTextStyleWarning = { link = "ALEVirtualTextWarning" },
		--: }}}
		--: airblade/vim-gitgutter{{{
		GitGutterAdd          = { fg = colors.color2 },
		GitGutterChange       = { fg = colors.color4 },
		GitGutterDelete       = { fg = colors.color1 },
		GitGutterChangeDelete = { fg = colors.color5 },
		--: }}}
		--: hrsh7th/nvim-cmp {{{
		CmpDocumentationBorder    = { link = "FloatBorder" },
		CmpItemAbbr               = { fg = colors.foreground },
		CmpItemAbbrDeprecated     = { fg = colors.color2 },
		CmpItemAbbrMatch          = { fg = colors.color4 },
		CmpItemAbbrMatchFuzzy     = { fg = colors.color5 },
		CmpItemKind               = { fg = colors.color4 },
		CmpItemMenu               = { fg = colors.color2 },
		--: }}}
		--: neovim/nvim-lspconfig {{{
		LspInlayHint                  = { link = "NonText" },
		LspDiagnosticsHint            = { fg = colors.color6 },
		LspDiagnosticsInformation     = { fg = colors.color7 },
		LspDiagnosticsWarning         = { fg = colors.color11 },
		LspDiagnosticsError           = { fg = colors.color1 },
		LspReferenceText              = { link = "CocHighlightText" },
		LspReferenceRead              = { link = "CocHighlightText" },
		LspReferenceWrite             = { link = "CocHighlightText" },
		LspInfoTitle                  = { link = "Title" },
		LspInfoTip                    = { link = "Comment" },
		LspInfoList                   = { link = "Function" },
		LspInfoBorder                 = { link = "Label" },
		LspInfoFiletype               = { link = "Type" },
		LspCodeLens                   = { link = "Comment" },
		LspSignatureActiveParameter   = { link = "Visual" },

		DiagnosticError       = { link = "LspDiagnosticsError" },
		DiagnosticWarn        = { link = "LspDiagnosticsWarning" },
		DiagnosticInfo        = { link = "LspDiagnosticsInformation" },
		DiagnosticHint        = { link = "LspDiagnosticsHint" },
		DiagnosticUnnecessary = { link = "Comment" },

		DiagnosticVirtualTextError = { link = "DiagnosticError" },
		DiagnosticVirtualTextWarn  = { link = "DiagnosticWarn" },
		DiagnosticVirtualTextInfo  = { link = "DiagnosticInfo" },
		DiagnosticVirtualTextHint  = { link = "DiagnosticHint" },

		DiagnosticUnderlineError = { link = "DiagnosticError", undercurl = true },
		DiagnosticUnderlineWarn  = { link = "DiagnosticWarn", undercurl = true },
		DiagnosticUnderlineInfo  = { link = "DiagnosticInfo", undercurl = true },
		DiagnosticUnderlineHint  = { link = "DiagnosticHint", undercurl = true },
		--: }}}
		--: Lazy.nvim {{{
		LazyProgressTodo  = { link = "LineNr" },
		LazyProgressDone  = { link = "Constant" },
		LazySpecial       = { link = "@punctuation.special" },
		LazyDir           = { link = "@markup.link" },
		LazyNoCond        = { link = "DiagnosticWarn" },
		LazyNormal        = { link = "NormalFloat" },
		LazyValue         = { link = "@string" },
		LazyUrl           = { link = "@markup.link" },
		LazyLocal         = { link = "Constant" },
		LazyProp          = { link = "Conceal" },
		LazyDimmed        = { link = "Conceal" },
		LazyCommitType    = { link = "Title" },
		LazyCommitIssue   = { link = "Number" },
		LazyCommitScope   = { italic = true },
		LazyCommit        = { link = "@variable.builtin" },
		LazyH1            = { bg = colors.color4, fg = colors.background, bold = true, italic = true },
		LazyH2            = { bold = true },
		LazyReasonRuntime = { link = "@macro" },
		LazyComment       = { link = "Comment" },
		LazyReasonRequire = { link = "@variable.parameter" },
		LazyReasonImport  = { link = "Identifier" },
		LazyReasonCmd     = { link = "Operator" },
		LazyReasonFt      = { link = "Character" },
		LazyButton        = { bg = colors.color8, bold = true },
		LazyReasonSource  = { link = "Character" },
		LazyButtonActive  = { link = "LazyH1" },
		LazyReasonStart   = { link = "@variable.member" },
		LazyTaskOutput    = { link = "MsgArea" },
		LazyReasonKeys    = { link = "Statement" },
		LazyReasonEvent   = { link = "Constant" },
		LazyReasonPlugin  = { link = "Special" },
		LazyTaskError     = { link = "ErrorMsg" },
		LazyBackdrop      = { bg = "#000000" },
		--: }}}
		--: nvim-treesitter/nvim-treesitter {{{
		["@annotation"]               = { link = "PreProc" },
		["@attribute"]                = { link = "PreProc" },
		["@boolean"]                  = { link = "Boolean" },
		["@character"]                = { link = "Character" },
		["@character.special"]        = { link = "SpecialChar" },
		["@comment"]                  = { link = "Comment" },
		["@keyword.conditional"]      = { link = "Conditional" },
		["@constant"]                 = { link = "Constant" },
		["@constant.builtin"]         = { link = "Special" },
		["@constant.macro"]           = { link = "Define" },
		["@keyword.debug"]            = { link = "Debug" },
		["@keyword.directive.define"] = { link = "Define" },
		["@keyword.exception"]        = { link = "Exception" },
		["@number.float"]             = { link = "Float" },
		["@function"]                 = { link = "Function" },
		["@function.builtin"]         = { link = "Special" },
		["@function.call"]            = { link = "@function" },
		["@function.macro"]           = { link = "Macro" },
		["@keyword.import"]           = { link = "Include" },
		["@keyword.coroutine"]        = { link = "@keyword" },
		["@keyword.operator"]         = { link = "@operator" },
		["@keyword.return"]           = { link = "@keyword" },
		["@function.method"]          = { link = "Function" },
		["@function.method.call"]     = { link = "@function.method" },
		["@namespace.builtin"]        = { link = "@variable.builtin" },
		["@none"]                     = {},
		["@number"]                   = { link = "Number" },
		["@keyword.directive"]        = { link = "PreProc" },
		["@keyword.repeat"]           = { link = "Repeat" },
		["@keyword.storage"]          = { link = "StorageClass" },
		["@string"]                   = { link = "String" },
		["@markup.link.label"]        = { link = "SpecialChar" },
		["@markup.link.label.symbol"] = { link = "Identifier" },
		["@tag"]                      = { link = "Label" },
		["@tag.attribute"]            = { link = "@property" },
		["@tag.delimiter"]            = { link = "Delimiter" },
		["@markup"]                   = { link = "@none" },
		["@markup.environment"]       = { link = "Macro" },
		["@markup.environment.name"]  = { link = "Type" },
		["@markup.raw"]               = { link = "String" },
		["@markup.math"]              = { link = "Special" },
		["@markup.strong"]            = { bold = true },
		["@markup.emphasis"]          = { italic = true },
		["@markup.strikethrough"]     = { strikethrough = true },
		["@markup.underline"]         = { underline = true },
		["@markup.heading"]           = { link = "Title" },
		["@comment.note"]             = { fg = colors.color6 },
		["@comment.error"]            = { link = "Error" },
		["@comment.hint"]             = { fg = colors.color6 },
		["@comment.info"]             = { fg = colors.color4 },
		["@comment.warning"]          = { fg = colors.color3 },
		["@comment.todo"]             = { link = "Todo" },
		["@markup.link.url"]          = { link = "Underlined" },
		["@type"]                     = { link = "Type" },
		["@type.definition"]          = { link = "Typedef" },
		["@type.qualifier"]           = { link = "@keyword" },
		--
		--- Misc
		["@comment.documentation"] = { },
		["@operator"] = { link = "Operator" }, -- For any operator: `+`, but also `->` and `*` in C.
		--
		--- Punctuation
		["@punctuation.delimiter"] = { link = "Delimiter" }, -- For delimiters ie: `.`
		["@punctuation.bracket"]   = { fg = colors.foreground }, -- For brackets and parens.
		["@punctuation.special"]   = { link = "SpecialChar" }, -- For special symbols (e.g. `{}` in string interpolation)
		["@markup.list"]           = { fg = colors.color4 }, -- For special punctutation that does not fall in the catagories before.
		["@markup.list.markdown"]  = { link = "markdownListMarker", bold = true },
		--
		--- Literals
		["@string.documentation"] = { fg = colors.color3 },
		["@string.regexp"]        = { fg = colors.color6 }, -- For regexes.
		["@string.escape"]        = { fg = colors.color5 }, -- For escape characters within a string.
		--
		--- Functions
		["@constructor"]                = { fg = colors.color5 }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
		["@variable.parameter"]         = { fg = colors.color3 }, -- For parameters of a function.
		["@variable.parameter.builtin"] = { fg = colors.color3 }, -- For builtin parameters of a function, e.g. "..." or Smali"s p[1-99]
		--
		--- Keywords
		["@keyword"]          = { link = "Keyword" }, -- For keywords that don"t fall in previous categories.
		["@keyword.function"] = { link = "Function" }, -- For keywords used to define a fuction.
		--
		["@label"] = { link = "Label" }, -- For labels: `label:` in C and `:label:` in Lua.
		--
		--- Types
		["@type.builtin"]    = { fg = colors.color4 },
		["@variable.member"] = { fg = colors.color2 }, -- For fields.
		["@property"]        = { fg = colors.color2 },
		--
		--- Identifiers
		["@variable"]         = { link = "Variable" }, -- Any variable name that does not have another highlight.
		["@variable.builtin"] = { fg = colors.color1 }, -- Variable names that are defined by the languages, like `this` or `self`.
		["@module.builtin"]   = { fg = colors.color1 }, -- Variable names that are defined by the languages, like `this` or `self`.
		--
		--- Text
		["@markup.raw.markdown"]        = { fg = colors.color4 },
		["@markup.raw.markdown_inline"] = { fg = colors.color4 },
		["@markup.link"]                = { fg = colors.color11 },
		--
		["@markup.list.unchecked"] = { fg = colors.color4 }, -- For brackets and parens.
		["@markup.list.checked"]   = { fg = colors.color2 }, -- For brackets and parens.
		--
		["@diff.plus"]  = { link = "DiffAdd" },
		["@diff.minus"] = { link = "DiffDelete" },
		["@diff.delta"] = { link = "DiffChange" },
		--
		["@module"] = { link = "Include" },
		--
		-- tsx
		["@tag.tsx"]           = { fg = colors.color1 },
		["@constructor.tsx"]   = { fg = colors.color4 },
		["@tag.delimiter.tsx"] = { fg = colors.color4 },
		--
		-- LSP Semantic Token Groups
		["@lsp.type.boolean"]                      = { link = "@boolean" },
		["@lsp.type.builtinType"]                  = { link = "@type.builtin" },
		["@lsp.type.comment"]                      = { link = "@comment" },
		["@lsp.type.decorator"]                    = { link = "@attribute" },
		["@lsp.type.deriveHelper"]                 = { link = "@attribute" },
		["@lsp.type.enum"]                         = { link = "@type" },
		["@lsp.type.enumMember"]                   = { link = "@constant" },
		["@lsp.type.escapeSequence"]               = { link = "@string.escape" },
		["@lsp.type.formatSpecifier"]              = { link = "@markup.list" },
		["@lsp.type.generic"]                      = { link = "@variable" },
		["@lsp.type.interface"]                    = { fg = colors.color4 },
		["@lsp.type.keyword"]                      = { link = "@keyword" },
		["@lsp.type.lifetime"]                     = { link = "@keyword.storage" },
		["@lsp.type.namespace"]                    = { link = "@module" },
		["@lsp.type.number"]                       = { link = "@number" },
		["@lsp.type.operator"]                     = { link = "@operator" },
		["@lsp.type.parameter"]                    = { link = "@variable.parameter" },
		["@lsp.type.property"]                     = { link = "@property" },
		["@lsp.type.selfKeyword"]                  = { link = "@variable.builtin" },
		["@lsp.type.selfTypeKeyword"]              = { link = "@variable.builtin" },
		["@lsp.type.string"]                       = { link = "@string" },
		["@lsp.type.typeAlias"]                    = { link = "@type.definition" },
		["@lsp.type.unresolvedReference"]          = { link = "Error", undercurl = true },
		["@lsp.type.variable"]                     = {}, -- use treesitter styles for regular variables
		["@lsp.typemod.class.defaultLibrary"]      = { link = "@type.builtin" },
		["@lsp.typemod.enum.defaultLibrary"]       = { link = "@type.builtin" },
		["@lsp.typemod.enumMember.defaultLibrary"] = { link = "@constant.builtin" },
		["@lsp.typemod.function.defaultLibrary"]   = { link = "@function.builtin" },
		["@lsp.typemod.keyword.async"]             = { link = "@keyword.coroutine" },
		["@lsp.typemod.keyword.injected"]          = { link = "@keyword" },
		["@lsp.typemod.macro.defaultLibrary"]      = { link = "@function.builtin" },
		["@lsp.typemod.method.defaultLibrary"]     = { link = "@function.builtin" },
		["@lsp.typemod.operator.injected"]         = { link = "@operator" },
		["@lsp.typemod.string.injected"]           = { link = "@string" },
		["@lsp.typemod.struct.defaultLibrary"]     = { link = "@type.builtin" },
		["@lsp.typemod.type.defaultLibrary"]       = { fg = colors.color4 },
		["@lsp.typemod.typeAlias.defaultLibrary"]  = { fg = colors.color4 },
		["@lsp.typemod.variable.callable"]         = { link = "@function" },
		["@lsp.typemod.variable.defaultLibrary"]   = { link = "@variable.builtin" },
		["@lsp.typemod.variable.injected"]         = { link = "@variable" },
		["@lsp.typemod.variable.static"]           = { link = "@constant" },
		-- NOTE: maybe add these with distinct highlights?
		-- ["@lsp.typemod.variable.globalScope"] (global variables)
		--: }}}
		--: nvim-neo-tree/neo-tree.nvim {{{
		NeoTreeDirectoryName        = { link = "Directory" },
		NeoTreeDirectoryIcon        = { link = "Directory" },
		NeoTreeNormal               = { link = "Normal" },
		NeoTreeNormalNC             = { link = "NormalNC" },
		NeoTreeExpander             = { link = "Comment" },
		NeoTreeIndentMarker         = { link = "NeoTreeExpander" },
		NeoTreeRootName             = { link = "Directory" },
		NeoTreeSymbolicLinkTarget   = { fg = colors.color6 },
		NeoTreeModified             = { fg = colors.color11 },

		NeoTreeGitIgnored           = { link = "Comment" },
		NeoTreeGitModified          = { link = "NeoTreeModified" },
		NeoTreeGitAdded             = { link = "GitGutterAdd" },
		NeoTreeGitConflict          = { link = "GitGutterDelete" },
		NeoTreeGitDeleted           = { link = "GitGutterDelete" },
		NeoTreeGitUnstaged          = { link = "GitGutterDelete" },
		NeoTreeGitUntracked         = { link = "GitGutterChangeDelete" },
		NeoTreeGitStaged            = { link = "GitGutterAdd" },

		NeoTreeFloatBorder          = { link = "FloatBorder" },
		NeoTreeFloatTitle           = { link = "FloatTitle" },
		NeoTreeTitleBar             = { bg = colors.color4, fg = colors.background },
		NeoTreeFileNameOpened       = { fg = colors.color5 },
		NeoTreeDimText              = { link = "Comment" },
		NeoTreeFilterTerm           = { fg = colors.color2, bold = true },
		NeoTreeTabActive            = { fg = colors.color13, bold = true },
		NeoTreeTabInactive          = { bg = colors.color8, fg = colors.color7 },
		NeoTreeTabSeparatorActive   = { fg = colors.background },
		NeoTreeTabSeparatorInactive = { bg = colors.color8, fg = colors.color8 },
		NeoTreeVertSplit            = { bg = colors.color8, fg = colors.background },
		NeoTreeStatusLineNC         = { fg = colors.background },
		NeoTreeDotfile              = { link = "Normal" },
		NeoTreeHiddenByName         = { link = "Normal" }, -- links to NeoTreeDotfile
		NeoTreeWindowsHidden        = { link = "Normal" }, -- links to NeoTreeDotfile
		NeoTreeCursorLine           = { link = "CursorLine" },
		NeoTreeFileIcon             = { link = "NeoTreeDirectoryIcon" },
		NeoTreePreview              = { link = "Search" },
		NeoTreeGitRenamed           = { link = "NeoTreeGitModified" },
		NeoTreeFileStats            = { link = "Comment" },
		NeoTreeFileStatsHeader      = { link = "Comment", bold = true },
		NeoTreeSignColumn           = { link = "SignColumn" },
		NeoTreeStatusLine           = { link = "StatusLine" },
		NeoTreeWinSeparator         = { link = "WinSeparator" },
		NeoTreeEndOfBuffer          = { link = "EndOfBuffer" },
		NeoTreeFloatNormal          = { link = "NormalFloat" },
		NeoTreeBufferNumber         = { link = "SpecialChar" },
		NeoTreeMessage              = { link = "Comment", italic = true },
		NeoTreeFadeText1            = { link = "Comment" },
		NeoTreeFadeText2            = { link = "Comment" },
		--: }}}
		--: akinsho/bufferline.nvim {{{
		BufferLineBackground                = { link = "TabLine" },
		BufferLineFill                      = { link = "TabLineFill" },
		BufferLineGroupLabel                = { fg = colors.color7 },
		BufferLineGroupSeparator            = { fg = colors.color7 },
		BufferLineTruncMarker               = { fg = colors.color7 },
		BufferLineBuffer                    = { bg = colors.color1, fg = colors.color2 },
		BufferLineBufferVisible             = { fg = colors.color7 },
		BufferLineBufferSelected            = { link = "BufferLineTabSelected" },
		BufferLineDuplicate                 = { fg = colors.color7 },
		BufferLineDuplicateVisible          = { fg = colors.color7 },
		BufferLineDuplicateSelected         = { fg = colors.color3, bold = true, italic = true },
		BufferLineTab                       = { fg = colors.color7 },
		BufferLineTabSelected               = { link = "TabLineSel" },
		BufferLineTabSeparator              = { fg = colors.background },
		BufferLineTabSeparatorSelected      = { fg = colors.color4, bold = true },
		BufferLineTabClose                  = { bg = colors.color1, fg = colors.background, bold = true },
		BufferLineIndicatorVisible          = { fg = colors.color7 },
		BufferLineIndicatorSelected         = { link = "BufferLineTabSelected" },
		BufferLineSeparator                 = { fg = colors.background },
		BufferLineSeparatorVisible          = { fg = colors.background },
		BufferLineSeparatorSelected         = { fg = colors.background },
		BufferLineOffsetSeparator           = { fg = colors.background },
		BufferLineCloseButton               = { fg = colors.color1, bold = true},
		BufferLineCloseButtonVisible        = { fg = colors.color1 },
		BufferLineCloseButtonSelected       = { fg = colors.color1, bold = true, italic = true },
		BufferLineNumbers                   = { fg = colors.color7 },
		BufferLineNumbersVisible            = { fg = colors.color7 },
		BufferLineNumbersSelected           = { fg = colors.color7, bold = true, italic = true },
		BufferLineError                     = { fg = colors.color1 },
		BufferLineErrorVisible              = { fg = colors.color1 },
		BufferLineErrorSelected             = { fg = colors.color1, bold = true, italic = true },
		BufferLineErrorDiagnostic           = { fg = colors.color1 },
		BufferLineErrorDiagnosticVisible    = { fg = colors.color1 },
		BufferLineErrorDiagnosticSelected   = { fg = colors.color1, bold = true, italic = true },
		BufferLineWarning                   = { fg = colors.color3 },
		BufferLineWarningVisible            = { fg = colors.color3 },
		BufferLineWarningSelected           = { fg = colors.color3, bold = true, italic = true },
		BufferLineWarningDiagnostic         = { fg = colors.color3 },
		BufferLineWarningDiagnosticVisible  = { fg = colors.color3 },
		BufferLineWarningDiagnosticSelected = { fg = colors.color3, bold = true, italic = true },
		BufferLineInfo                      = { fg = colors.color6 },
		BufferLineInfoVisible               = { fg = colors.color6 },
		BufferLineInfoSelected              = { fg = colors.color6, bold = true, italic = true },
		BufferLineInfoDiagnostic            = { fg = colors.color6 },
		BufferLineInfoDiagnosticVisible     = { fg = colors.color6 },
		BufferLineInfoDiagnosticSelected    = { fg = colors.color6, bold = true, italic = true },
		BufferLineHint                      = { fg = colors.color5 },
		BufferLineHintVisible               = { fg = colors.color5 },
		BufferLineHintSelected              = { fg = colors.color5, bold = true, italic = true },
		BufferLineHintDiagnostic            = { fg = colors.color5 },
		BufferLineHintDiagnosticVisible     = { fg = colors.color5 },
		BufferLineHintDiagnosticSelected    = { fg = colors.color5, bold = true, italic = true },
		BufferLineDiagnostic                = { fg = colors.color2 },
		BufferLineDiagnosticVisible         = { fg = colors.color2 },
		BufferLineDiagnosticSelected        = { fg = colors.color2, bold = true, italic = true },
		BufferLineModified                  = { fg = colors.color11 },
		BufferLineModifiedVisible           = { fg = colors.color11 },
		BufferLineModifiedSelected          = { fg = colors.color11, bold = true, italic = true },
		BufferLinePick                      = { fg = colors.color7 },
		BufferLinePickVisible               = { fg = colors.color7 },
		BufferLinePickSelected              = { fg = colors.color7, bold = true, italic = true },
		--: DevIcons Coloring {{{
		-- BufferLineDevIconPy.typed            = { bg = colors.background, fg = colors.color7 },
		BufferLineDevIconDefaultSelected      = { bg = colors.background, fg = colors.color7, bold = true },
		BufferLineDevIconDefault              = { bg = colors.background, fg = colors.color7 },
		BufferLineDevIconBazelWorkspace       = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconLess                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconClojure              = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconHpp                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconCSharpProject        = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconNodeModules          = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconKotlinScript         = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconEdn                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconCjs                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconJpegXl               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconXul                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconH                    = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconVala                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconVHDL                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconCp                   = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconPp                   = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconSabayon              = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconTerraform            = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconC                    = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconScheme               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconBashrc               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconSystemVerilog        = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconRedhat               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconHrl                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconVlang                = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconConfiguration        = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconRaspberryPiOS        = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconYml                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconBashProfile          = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconParrot               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconVimrc                = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconTrueTypeFont         = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconopenSUSE             = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconTwig                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconcuda                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconPy                   = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconLicense              = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconRake                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconWebmanifest          = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconLog                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconTFVars               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconR                    = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconMageia               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconAi                   = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconNushell              = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconCts                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconSettingsJson         = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconErb                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconTestTs               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconFennel               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconGDScript             = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconGraphQL              = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconTestJs               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconLuaurc               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconExe                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconJl                   = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconGitlabCI             = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconMts                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconPrisma               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconReScriptInterface    = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconTcl                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconElf                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconTextScene            = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconFedora               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconBabelrc              = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconEslintrc             = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconEditorConfig         = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconCsh                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconElementary           = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconDsStore              = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconErl                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconDevuan               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconKsh                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconTypeScriptReactSpec  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconArch                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconDeepin               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconJavaScriptReactSpec  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconDb                   = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconDebian               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconCobol                = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconRss                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconConf                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconCxxm                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconSass                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconOrgMode              = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconSig                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconSql                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconCpp                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconRazorPage            = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconPyi                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconXaml                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconTerminal             = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconCppm                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconConfigRu             = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconYaml                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconXml                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconNim                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconScss                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconCPlusPlusModule      = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconGitModules           = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconScala                = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconGemspec              = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconZshenv               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconBazel                = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconPxd                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconAzureCli             = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconAppleScript          = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconApp                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconDockerfile           = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconRakefile             = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconZigObjectNotation    = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconSvelte               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconEnv                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconImportConfiguration  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconRs                   = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconTailwindConfig       = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconOut                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconBazelBuild           = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconSvelteConfig         = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconNPMIgnore            = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconReScript             = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconPackageLockJson      = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconQuery                = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconNswag                = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconGvimrc               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconMixLock              = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconCPlusPlus            = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconMarkdown             = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconarduino              = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconZig                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconFavicon              = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconPm                   = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconGitConfig            = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconJson5                = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconTxt                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconE                    = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconPl                   = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconJava                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconLiquid               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconZshprofile           = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconIni                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconHh                   = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconBrewfile             = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconVerilog              = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconEslintIgnore         = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconZshrc                = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconMakefile             = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconPackageJson          = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconStyl                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconBzl                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconCMake                = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconZorin                = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconLua                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconNixOS                = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconRockyLinu            = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconHaml                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconGui                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconClojureJS            = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconTextResource         = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconHtml                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconLhs                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconEndeavour            = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconSlackware            = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconTempl                = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconGentoo               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconOpenBSD              = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconWebpack              = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconIllumos              = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconKali                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconSolus                = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconSpecTs               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconVim                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconSuo                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconClojureDart          = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconRb                   = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconSml                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconBudgie               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconMli                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconHbs                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconPxi                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconArti                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconEe                   = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconMjs                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconExs                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconNi                   = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconPsScriptfile         = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconAOSC                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconTs                   = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconPng                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconBackup               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconAlpine               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconCrystal              = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconPsScriptModulefile   = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconAlmalinu             = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconElm                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconCentos               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconManjaro              = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconUbuntu               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconApple                = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconLuau                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconFreeBSD              = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconGitIgnore            = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconHurl                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconDart                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconsbt                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconSpecJs               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconHs                   = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconGo                   = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconCsv                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconCss                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconKotlin               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconProlog               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconTe                   = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconDesktopEntry         = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconJpg                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconTypeScriptReactTest  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconMd                   = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconJsonc                = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconM4A                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconVoid                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconVue                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconWebOpenFontFormat    = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconPop_OS               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconCoffee               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconHtm                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconSwift                = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconSln                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconHee                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconGif                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconMpp                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconZsh                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconJavaScriptReactTest  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconPackedResource       = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconDump                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconI                    = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconCMakeLists           = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconBibTe                = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconPhp                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconNotebook             = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconTSConfig             = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconSh                   = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconD                    = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconGroovy               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconNPMrc                = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconLinu                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconAwk                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconPyd                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconPyc                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconPsd                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconPsb                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconProcfile             = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconPpt                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconPrettierConfig       = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconOpenTypeFont         = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconOPUS                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconOgg                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconMp4                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconMp3                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconMOV                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconMotoko               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconMkv                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconMint                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconM4V                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconSvg                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconMaterial             = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconLock                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconRmd                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconJpeg                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconClojureC             = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconIco                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconHuff                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconHaxe                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconGulpfile             = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconGruntfile            = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconGodotProject         = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconBinaryGLTF           = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconCheckhealth          = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconFlac                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconDropbo               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconToml                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconDrools               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconDoc                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconBmp                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconLee                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconMl                   = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconGemfile              = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconDiff                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconAvif                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconCs                   = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconVagrantfile          = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconBash                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconFsscript             = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconGitLogo              = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconWindows              = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconEpp                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconPsManifestfile       = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconEjs                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconGitCommit            = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconCson                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconAac                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconPyo                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconRlib                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconRproj                = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconEmbeddedOpenTypeFont = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconSlim                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconJson                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconFish                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconMustache             = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconWav                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconWebm                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconWebp                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconcudah                = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconXcPlayground         = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconXls                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconFortran              = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconGitAttributes        = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconSolidity             = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconOpenSCAD             = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconPdf                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconFsi                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconTor                  = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconFsharp               = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconFs                   = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconWasm                 = { link = "BufferLineDevIconDefault" },
		BufferLineDevIconBat                  = { link = "BufferLineDevIconDefault" },
		--: }}}
		--: }}}
		--: folke/which-key.nvim {{{
		WhichKey          = { fg = colors.color1 },
		WhichKeyGroup     = { fg = colors.color11 },
		WhichKeyDesc      = { fg = colors.color6 },
		WhichKeySeperator = { link = "Comment" },
		WhichKeyValue     = { link = "Comment" },
		WhichKeySeparator = { link = "Comment" },
		WhichKeyBorder    = { link = "FloatBorder" },
		WhichKeyFloat     = { link = "NormalFloat" },
		--: }}}
		--: nvimdev/dashboard-nvim {{{
		DashboardShortCut = { fg = colors.color6 },
		DashboardHeader   = { fg = colors.color4 },
		DashboardCenter   = { fg = colors.color5 },
		DashboardFooter   = { fg = colors.color4 },
		DashboardKey      = { fg = colors.color11 },
		DashboardDesc     = { fg = colors.color6 },
		DashboardIcon     = { fg = colors.color6, bold = true },
		--: }}}
		--: goolord/alpha-nvim {{{
		AlphaShortcut    = { fg = colors.color11 },
		AlphaHeader      = { fg = colors.color4 },
		AlphaHeaderLabel = { fg = colors.color11 },
		AlphaFooter      = { fg = colors.color4 },
		AlphaButtons     = { fg = colors.color6 },
		--: }}}
		--: lukas-reineke/indent-blankline.nvim {{{
		IndentBlanklineChar = { link = "Comment" },
		--: }}}
		--: vim.org/netrw {{{
		--: https://www.vim.org/scripts/script.php?script_id=1075
		netrwDir      = { link = "Directory" },
		netrwClassify = { fg = colors.color2 },
		netrwLink     = { fg = colors.color8 },
		netrwSymLink  = { fg = colors.foreground },
		netrwExe      = { fg = colors.color1 },
		netrwComment  = { link = "Comment" },
		netrwList     = { fg = colors.color3 },
		netrwHelpCmd  = { fg = colors.color4 },
		netrwCmdSep   = { fg = colors.color8 },
		netrwVersion  = { fg = colors.color5 },
		--: }}}
		--: mbbill/undotree {{{
		UndotreeSavedBig    = { fg = colors.color1, bold = true },
		UndotreeNode        = { fg = colors.color4 },
		UndotreeNodeCurrent = { fg = colors.color5 },
		UndotreeSeq         = { fg = colors.color2 },
		UndotreeCurrent     = { fg = colors.color4 },
		UndotreeNext        = { fg = colors.color3 },
		UndotreeTimeStamp   = { fg = colors.color8 },
		UndotreeHead        = { fg = colors.color5 },
		UndotreeBranch      = { fg = colors.color4 },
		UndotreeSavedSmall  = { fg = colors.color1 },
		--: }}}
		--: nvim-telescope/telescope.nvim {{{
		TelescopeNormal                 = { link = "Normal" },
		TelescopeBorder                 = { link = "FloatBorder" },
		TelescopeSelection              = { link = "CursorLine" },
		TelescopeMatching               = { fg = colors.color4, bold = true },
		TelescopePromptBorder           = { link = "TelescopeBorder" },
		TelescopePromptNormal           = { fg = colors.foreground },
		TelescopePromptPrefix           = { fg = colors.color4, bold = true },
		TelescopePreviewTitle           = { fg = colors.color3 },
		TelescopePromptTitle            = { fg = colors.color4 },
		TelescopeResultsTitle           = { fg = colors.color6 },
		TelescopeSelectionCaret         = { fg = colors.color6 },
		TelescopeResultsVariable        = { link = "SpecialChar" },
		TelescopeResultsStruct          = { link = "Struct" },
		TelescopeResultsOperator        = { link = "Operator" },
		TelescopeResultsMethod          = { link = "Method" },
		TelescopeResultsFunction        = { link = "Function" },
		TelescopeResultsField           = { link = "Function" },
		TelescopeResultsConstant        = { link = "Constant" },
		TelescopeResultsClass           = { link = "Function" },
		TelescopePreviewMessageFillchar = { link = "TelescopePreviewMessage" },
		TelescopePreviewMessage         = { link = "TelescopePreviewNormal" },
		TelescopePreviewNormal          = { link = "TelescopeNormal" },
		TelescopePreviewDate            = { link = "Directory" },
		TelescopePreviewGroup           = { link = "Constant" },
		TelescopePreviewUser            = { link = "Constant" },
		TelescopePreviewSize            = { link = "String" },
		TelescopePreviewSticky          = { link = "Keyword" },
		TelescopePreviewHyphen          = { link = "NonText" },
		TelescopePreviewExecute         = { link = "String" },
		TelescopePreviewWrite           = { link = "Statement" },
		TelescopePreviewRead            = { link = "Constant" },
		TelescopePreviewSocket          = { link = "Statement" },
		TelescopePreviewLink            = { link = "Special" },
		TelescopePreviewBlock           = { link = "Constant" },
		TelescopePreviewDirectory       = { link = "Directory" },
		TelescopePreviewCharDev         = { link = "Constant" },
		TelescopePreviewPipe            = { link = "Constant" },
		TelescopePreviewMatch           = { link = "Search" },
		TelescopePreviewLine            = { link = "Visual" },
		TelescopePromptCounter          = { link = "NonText" },
		TelescopeTitle                  = { link = "TelescopeBorder" },
		TelescopePreviewBorder          = { link = "TelescopeBorder" },
		TelescopeResultsBorder          = { link = "TelescopeBorder" },
		TelescopeResultsNormal          = { link = "TelescopeNormal" },
		TelescopeMultiIcon              = { link = "Identifier" },
		TelescopeMultiSelection         = { link = "Type" },
		TelescopeResultsDiffUntracked   = { link = "NonText" },
		TelescopeResultsDiffDelete      = { link = "DiffDelete" },
		TelescopeResultsDiffAdd         = { link = "DiffAdd" },
		TelescopeResultsDiffChange      = { link = "DiffChange" },
		TelescopeResultsSpecialComment  = { link = "SpecialComment" },
		TelescopeResultsComment         = { link = "Comment" },
		TelescopeResultsNumber          = { link = "Number" },
		TelescopeResultsIdentifier      = { link = "Identifier" },
		TelescopeResultsLineNr          = { link = "LineNr" },
		--: }}}
		--: echasnovski/mini.nvim {{{
		--: mini.indentscope {{{
		MiniIndentscopeSymbol    = { link = "Comment" },
		MiniIndentscopeSymbolOff = { link = "MiniIndentscopeSymbol" },
		--: }}}
		--: mini.statusline {{{
		MiniStatuslineModeNormal   = { bg = colors.color4, fg = colors.background, bold = true },
		MiniStatuslineModeVisual   = { bg = colors.color5, fg = colors.background, bold = true },
		MiniStatuslineModeInsert   = { bg = colors.color6, fg = colors.background, bold = true },
		MiniStatuslineModeCommand  = { bg = colors.color1, fg = colors.background, bold = true },
		MiniStatuslineModeReplace  = { bg = colors.color2, fg = colors.background, bold = true },
		MiniStatuslineModeOther    = { bg = colors.color3, fg = colors.background, bold = true },
		MiniStatuslineModeDevInfo  = { link = "StatusLine", bold = true },
		MiniStatuslineModeFilename = { link = "StatusLineNC", bold = true },
		MiniStatuslineModeFileInfo = { link = "StatusLineNC", bold = true },
		MiniStatuslineModeInactive = { link = "Normal", bold = true },
		--: }}}
		--: mini.tabline {{{
		MiniTablineCurrent         = { bg = colors.color4, fg = colors.background, bold = true, italic = true },
		MiniTablineFill            = { link = "TabLineFill" },
		MiniTablineVisible         = { link = "TabLine" },
		MiniTablineHidden          = { link = "MiniTablineVisible" },
		MiniTablineModifiedCurrent = { bg = colors.color3, fg = colors.background, bold = true, italic = true },
		MiniTablineModifiedVisible = { fg = colors.color6 },
		MiniTablineModifiedHidden  = { fg = colors.color5 },
		MiniTablineTabpagesection  = { bg = colors.color4, fg = colors.background, bold = true },
		--: }}}
		--: mini.starter {{{
		--: }}}
		--: mini.cursorword {{{
		MiniCursorword        = { bg = colors.color8, bold = true },
		MiniCursorwordCurrent = { link = "MiniCursorword" },
		--: }}}
		--: mini.files {{{
		MiniFilesBorder         = { link = "FloatBorder" },
		MiniFilesBorderModified = { link = "DiagnosticVirtualTextWarn" },
		MiniFilesCursorLine     = { link = "CursorLine" },
		MiniFilesDirectory      = { link = "Directory" },
		MiniFilesFile           = {},
		MiniFilesNormal         = { link = "NormalFloat" },
		MiniFilesTitle          = { link = "Comment" },
		MiniFilesTitleFocused   = { link = "FloatTitle" },
		--: }}}
		--: mini.hipatterns {{{
		MiniHipatternsFixme = { bg = colors.color1, fg = colors.background, bold = true, italic = true },
		MiniHipatternsHack  = { bg = colors.color11, fg = colors.background, bold = true, italic = true },
		MiniHipatternsTodo  = { bg = colors.color4, fg = colors.background, bold = true, italic = true },
		MiniHipatternsNote  = { bg = colors.foreground, fg = colors.background, bold = true, italic = true },
		--: }}}
		--: mini.pick {{{
		MiniPickBorder        = { link = "FloatBorder" },
		MiniPickBorderBusy    = { link = "DiagnosticVirtualTextWarn" },
		MiniPickBorderText    = { link = "FloatTitle" },
		MiniPickIconDirectory = { link = "Directory" },
		MiniPickIconFile      = { link = "MiniPickNormal" },
		MiniPickNormal        = { link = "NormalFloat" },
		MiniPickHeader        = { link = "DiagnosticVirtualTextHint" },
		MiniPickMatchCurrent  = { link = "CursorLine" },
		MiniPickMatchMarked   = { link = "Visual" },
		MiniPickMatchRanges   = { fg = colors.color4 },
		MiniPickPreviewLine   = { link = "CursorLine" },
		MiniPickPreviewRegion = { link = "IncSearch" },
		MiniPickPrompt        = { link = "FloatTitle" },
		--: }}}
		--: }}}
	}

	if options.plugins.mini and options.plugins.mini.starter then
		vim.tbl_deep_extend("force", theme,
		{
			MiniStarterCurrent    = { link = "CursorLine" },
			MiniStarterHeader     = { fg = colors.color4, bold = true, italic = true },
			MiniStarterFooter     = { fg = colors.color5, bold = true, italic = true },
			MiniStarterInactive   = { link = "Comment" },
			MiniStarterItem       = { link = "Normal" },
			MiniStarterItemBullet = { link = "Delimiter" },
			MiniStarterItemPrefix = { fg = colors.foreground, bold = true, italic = true },
			MiniStarterSection    = { fg = colors.color6, bold = true, italic = true },
			MiniStarterQuery      = { fg = colors.color1 },
		})
	end

	return theme
end

return M

		--: Not configured {{{
		--: junegunn/vim-plug{{{
		--: call s:HL("plug1", s:palette.red, s:palette.none, "bold")
		--: call s:HL("plugNumber", s:palette.yellow, s:palette.none, "bold")
		--: highlight! link plug2 Blue
		--: highlight! link plugBracket Blue
		--: highlight! link plugName Green
		--: highlight! link plugDash Red
		--: highlight! link plugNotLoaded Grey
		--: highlight! link plugH2 Purple
		--: highlight! link plugMessage Purple
		--: highlight! link plugError Red
		--: highlight! link plugRelDate Grey
		--: highlight! link plugStar Purple
		--: highlight! link plugUpdate Blue
		--: highlight! link plugDeleted Grey
		--: highlight! link plugEdge Purple
		--: }}}
		--: neomake/neomake{{{
		--: highlight! link NeomakeError ALEError
		--: highlight! link NeomakeErrorSign ALEErrorSign
		--: highlight! link NeomakeWarning ALEWarning
		--: highlight! link NeomakeWarningSign ALEWarningSign
		--: highlight! link NeomakeInfo ALEInfo
		--: highlight! link NeomakeInfoSign ALEInfoSign
		--: highlight! link NeomakeMessage ALEInfo
		--: highlight! link NeomakeMessageSign CocHintSign
		--: highlight! link NeomakeVirtualtextError Grey
		--: highlight! link NeomakeVirtualtextWarning Grey
		--: highlight! link NeomakeVirtualtextInfo Grey
		--: highlight! link NeomakeVirtualtextMessag Grey
		--: }}}
		--: vim-syntastic/syntastic{{{
		--: highlight! link SyntasticError ALEError
		--: highlight! link SyntasticWarning ALEWarning
		--: highlight! link SyntasticErrorSign ALEErrorSign
		--: highlight! link SyntasticWarningSign ALEWarningSign
		--: }}}
		--: Yggdroot/LeaderF{{{
		--: if !exists("g:Lf_StlColorscheme")
		--:   let g:Lf_StlColorscheme = "one"
		--: endif
		--: call s:HL("Lf_hl_match", s:palette.green, s:palette.none, "bold")
		--: call s:HL("Lf_hl_match0", s:palette.green, s:palette.none, "bold")
		--: call s:HL("Lf_hl_match1", s:palette.blue, s:palette.none, "bold")
		--: call s:HL("Lf_hl_match2", s:palette.red, s:palette.none, "bold")
		--: call s:HL("Lf_hl_match3", s:palette.yellow, s:palette.none, "bold")
		--: call s:HL("Lf_hl_match4", s:palette.purple, s:palette.none, "bold")
		--: call s:HL("Lf_hl_matchRefine", s:palette.yellow, s:palette.none, "bold")
		--: highlight! link Lf_hl_cursorline Fg
		--: highlight! link Lf_hl_selection DiffAdd
		--: highlight! link Lf_hl_rgHighlight Visual
		--: highlight! link Lf_hl_gtagsHighlight Visual
		--: }}}
		--: junegunn/fzf.vim{{{
		--: let g:fzf_colors = {
		--:       \ "fg": ["fg", "Normal"],
		--:       \ "bg": ["bg", "Normal"],
		--:       \ "hl": ["fg", "Green"],
		--:       \ "fg+": ["fg", "CursorLine", "CursorColumn", "Normal"],
		--:       \ "bg+": ["bg", "CursorLine", "CursorColumn"],
		--:       \ "hl+": ["fg", "Green"],
		--:       \ "info": ["fg", "Yellow"],
		--:       \ "prompt": ["fg", "Red"],
		--:       \ "pointer": ["fg", "Blue"],
		--:       \ "marker": ["fg", "Blue"],
		--:       \ "spinner": ["fg", "Yellow"],
		--:       \ "header": ["fg", "Blue"]
		--:       \ }
		--: }}}
		--: Shougo/denite.nvim{{{
		--: call s:HL("deniteMatchedChar", s:palette.green, s:palette.none, "bold")
		--: call s:HL("deniteMatchedRange", s:palette.green, s:palette.none, "bold,underline")
		--: call s:HL("deniteInput", s:palette.green, s:palette.bg1, "bold")
		--: call s:HL("deniteStatusLineNumber", s:palette.purple, s:palette.bg1)
		--: call s:HL("deniteStatusLinePath", s:palette.fg, s:palette.bg1)
		--: highlight! link deniteSelectedLine Green
		--: }}}
		--: kien/ctrlp.vim{{{
		--: call s:HL("CtrlPMatch", s:palette.green, s:palette.none, "bold")
		--: call s:HL("CtrlPPrtBase", s:palette.grey, s:palette.none)
		--: call s:HL("CtrlPLinePre", s:palette.grey, s:palette.none)
		--: call s:HL("CtrlPMode1", s:palette.blue, s:palette.bg1, "bold")
		--: call s:HL("CtrlPMode2", s:palette.bg1, s:palette.blue, "bold")
		--: call s:HL("CtrlPStats", s:palette.grey, s:palette.bg1, "bold")
		--: highlight! link CtrlPNoEntries Red
		--: highlight! link CtrlPPrtCursor Blue
		--: }}}
		--: majutsushi/tagbar{{{
		--: highlight! link TagbarFoldIcon Blue
		--: highlight! link TagbarSignature Green
		--: highlight! link TagbarKind Red
		--: highlight! link TagbarScope Orange
		--: highlight! link TagbarNestedKind Blue
		--: highlight! link TagbarVisibilityPrivate Red
		--: highlight! link TagbarVisibilityPublic Blue
		--: }}}
		--: liuchengxu/vista.vim{{{
		--: highlight! link VistaBracket Grey
		--: highlight! link VistaChildrenNr Yellow
		--: highlight! link VistaScope Red
		--: highlight! link VistaTag Green
		--: highlight! link VistaPrefix Grey
		--: highlight! link VistaColon Green
		--: highlight! link VistaIcon Purple
		--: highlight! link VistaLineNr Fg
		--: }}}
		--: mhinz/vim-signify{{{
		--: highlight! link SignifySignAdd GitGutterAdd
		--: highlight! link SignifySignChange GitGutterChange
		--: highlight! link SignifySignDelete GitGutterDelete
		--: highlight! link SignifySignChangeDelete GitGutterChangeDelete
		--: }}}
		--: scrooloose/nerdtree{{{
		--: highlight! link NERDTreeDir Green
		--: highlight! link NERDTreeDirSlash Green
		--: highlight! link NERDTreeOpenable Blue
		--: highlight! link NERDTreeClosable Blue
		--: highlight! link NERDTreeFile Fg
		--: highlight! link NERDTreeExecFile Red
		--: highlight! link NERDTreeUp Grey
		--: highlight! link NERDTreeCWD Purple
		--: highlight! link NERDTreeHelp Grey
		--: highlight! link NERDTreeToggleOn Green
		--: highlight! link NERDTreeToggleOff Red
		--: highlight! link NERDTreeFlags Blue
		--: highlight! link NERDTreeLinkFile Grey
		--: highlight! link NERDTreeLinkTarget Green
		--: }}}
		--: justinmk/vim-dirvish{{{
		--: highlight! link DirvishPathTail Blue
		--: highlight! link DirvishArg Yellow
		--: }}}
		--: andymass/vim-matchup{{{
		--: call s:HL("MatchParenCur", s:palette.none, s:palette.none, "bold")
		--: call s:HL("MatchWord", s:palette.none, s:palette.none, "underline")
		--: call s:HL("MatchWordCur", s:palette.none, s:palette.none, "underline")
		--: }}}
		--: easymotion/vim-easymotion {{{
		--: highlight! link EasyMotionTarget Search
		--: highlight! link EasyMotionShade Grey
		--: }}}
		--: justinmk/vim-sneak {{{
		--: highlight! link Sneak Cursor
		--: highlight! link SneakLabel Cursor
		--: highlight! link SneakScope DiffAdd
		--: }}}
		--: terryma/vim-multiple-cursors{{{
		--: highlight! link multiple_cursors_cursor Cursor
		--: highlight! link multiple_cursors_visual Visual
		--: }}}
		--: mg979/vim-visual-multi{{{
		--: let g:VM_Mono_hl = "Cursor"
		--: let g:VM_Extend_hl = "Visual"
		--: let g:VM_Cursor_hl = "Cursor"
		--: let g:VM_Insert_hl = "Cursor"
		--: }}}
		--: dominikduda/vim_current_word{{{
		--: highlight! link CurrentWord CocHighlightText
		--: highlight! link CurrentWordTwins CocHighlightText
		--: }}}
		--: RRethy/vim-illuminate{{{
		--: highlight! link illuminatedWord CocHighlightText
		--: }}}
		--: itchyny/vim-cursorword{{{
		--: highlight! link CursorWord0 CocHighlightText
		--: highlight! link CursorWord1 CocHighlightText
		--: }}}
		--: Yggdroot/indentLine{{{
		--: let g:indentLine_color_gui = s:palette.grey[0]
		--: let g:indentLine_color_term = s:palette.grey[1]
		--: }}}
		--: nathanaelkane/vim-indent-guides{{{
		--: if get(g:, "indent_guides_auto_colors", 1) == 0
		--:   call s:HL("IndentGuidesOdd", s:palette.bg0, s:palette.bg1)
		--:   call s:HL("IndentGuidesEven", s:palette.bg0, s:palette.bg2)
		--: endif
		--: }}}
		--: kshenoy/vim-signature {{{
		--: if s:configuration.transparent_background
		--:   call s:HL("SignatureMarkText", s:palette.blue, s:palette.none)
		--:   call s:HL("SignatureMarkerText", s:palette.red, s:palette.none)
		--: else
		--:   call s:HL("SignatureMarkText", s:palette.blue, s:palette.bg1)
		--:   call s:HL("SignatureMarkerText", s:palette.red, s:palette.bg1)
		--: endif
		--: }}}
		--: mhinz/vim-startify{{{
		--: highlight! link StartifyBracket Grey
		--: highlight! link StartifyFile Green
		--: highlight! link StartifyNumber Orange
		--: highlight! link StartifyPath Grey
		--: highlight! link StartifySlash Grey
		--: highlight! link StartifySection Blue
		--: highlight! link StartifyHeader Red
		--: highlight! link StartifySpecial Grey
		--: }}}
		--: ap/vim-buftabline{{{
		--: highlight! link BufTabLineCurrent TabLineSel
		--: highlight! link BufTabLineActive TabLine
		--: highlight! link BufTabLineHidden TabLineFill
		--: highlight! link BufTabLineFill TabLineFill
		--: }}}
		--: liuchengxu/vim-which-key{{{
		--: highlight! link WhichKey Red
		--: highlight! link WhichKeySeperator Green
		--: highlight! link WhichKeyGroup Orange
		--: highlight! link WhichKeyDesc Blue
		--: }}}
		--: skywind3000/quickmenu.vim{{{
		--: highlight! link QuickmenuOption Green
		--: highlight! link QuickmenuNumber Orange
		--: highlight! link QuickmenuBracket Grey
		--: highlight! link QuickmenuHelp Blue
		--: highlight! link QuickmenuSpecial Grey
		--: highlight! link QuickmenuHeader Purple
		--: }}}
		--: unblevable/quick-scope {{{
		--: call s:HL("QuickScopePrimary", s:palette.green, s:palette.none, "underline")
		--: call s:HL("QuickScopeSecondary", s:palette.blue, s:palette.none, "underline")
		--: }}}
		--: APZelos/blamer.nvim {{{
		--: highlight! link Blamer Grey
		--: }}}
		--: cohama/agit.vim {{{
		--: highlight! link agitTree Grey
		--: highlight! link agitDate Green
		--: highlight! link agitRemote Red
		--: highlight! link agitHead Blue
		--: highlight! link agitRef Orange
		--: highlight! link agitTag Blue
		--: highlight! link agitStatFile Blue
		--: highlight! link agitStatRemoved Red
		--: highlight! link agitStatAdded Green
		--: highlight! link agitStatMessage Orange
		--: highlight! link agitDiffRemove diffRemoved
		--: highlight! link agitDiffAdd diffAdded
		--: highlight! link agitDiffHeader Blue
		--: highlight! link agitAuthor Yellow
		--: }}}
		--: }}}