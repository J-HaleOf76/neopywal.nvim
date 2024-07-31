---@alias ThemeStyles "dark" | "light" | nil
---@alias HighlightStyles "bold" | "underline" | "undercurl" | "underdouble" | "underdotted" | "underdashed" | "strikethrough" | "reverse" | "inverse" | "italic" | "standout" | "altfont" | "nocombine" | "NONE"
---@alias ValidColorOptions string<string<ValidColors[]> | fun(C: table<ValidColors[]>?): ValidColors[]? | "">
---@alias ValidColors
---| "background"
---| "foreground"
---| "cursor"
---| "color0"
---| "color1"
---| "color2"
---| "color3"
---| "color4"
---| "color5"
---| "color6"
---| "color7"
---| "color8"
---| "color9"
---| "color10"
---| "color11"
---| "color12"
---| "color13"
---| "color14"
---| "color15"
---| "dim_bg"
---| "comment"
---| "cursorline"
---| "directory"
---| "diff_added"
---| "diff_changed"
---| "diff_removed"
---| "diff_untracked"
---| "error"
---| "hint"
---| "info"
---| "unnecessary"
---| "warn"
---| "ok"
---| "inlay_hints"
---| "variable"
---| "constant"
---| "string"
---| "character"
---| "number"
---| "boolean"
---| "float"
---| "identifier"
---| "func"
---| "statement"
---| "conditional"
---| "loop"
---| "label"
---| "exception"
---| "operator"
---| "keyword"
---| "debug"
---| "preproc"
---| "include"
---| "define"
---| "macro"
---| "precondit"
---| "type"
---| "structure"
---| "storageclass"
---| "typedef"
---| "special"
---| "secialchar"
---| "tag"
---| "delimiter"
---| "specialcomment"

---@class Neopywal
---@field current_style ThemeStyles
---@field get_colors fun(theme_style: ThemeStyles?): table
---@field load fun(theme_style: ThemeStyles?)
---@field setup fun(user_config: NeopywalOptions?)

---@class Compiler
---@field options {path_sep: string, filename: string, compile_path: string}
---@field compile fun()
---@field recompile fun()

---@class NeopywalConfig
---@field default_options NeopywalOptions
---@field options NeopywalOptions
---@field setup fun(user_config: NeopywalOptions?)
---@field did_setup boolean

---@class NeopywalOptions
---@field use_wallust boolean?
---@field colorscheme_file string
---@field use_palette string?
---@field transparent_background boolean?
---@field custom_colors table?
---@field custom_highlights table?
---@field dim_inactive boolean?
---@field terminal_colors boolean?
---@field show_end_of_buffer boolean?
---@field show_split_lines boolean?
---@field no_italic boolean?
---@field no_bold boolean?
---@field no_underline boolean?
---@field no_undercurl boolean?
---@field no_strikethrough boolean?
---@field styles NeopywalStyles?
---@field default_fileformats boolean?
---@field default_plugins boolean?
---@field fileformats NeopywalFileformats?
---@field plugins NeopywalPlugins?

---@class NeopywalStyles
---@field comments HighlightStyles[]?
---@field conditionals HighlightStyles[]?
---@field loops HighlightStyles[]?
---@field functions HighlightStyles[]?
---@field keywords HighlightStyles[]?
---@field includes HighlightStyles[]?
---@field strings HighlightStyles[]?
---@field variables HighlightStyles[]?
---@field numbers HighlightStyles[]?
---@field booleans HighlightStyles[]?
---@field types HighlightStyles[]?
---@field operators HighlightStyles[]?
---@field lsp NeopywalPluginsLSP?

---@class NeopywalFileformats
---@field c_cpp boolean?
---@field c_sharp boolean?
---@field clojure boolean?
---@field cmake boolean?
---@field common_lisp boolean?
---@field css boolean?
---@field dart boolean?
---@field diff boolean?
---@field elixir boolean?
---@field erlang boolean?
---@field git_commit boolean?
---@field go boolean?
---@field haskell boolean?
---@field help boolean?
---@field html boolean?
---@field ini boolean?
---@field java boolean?
---@field javascript boolean?
---@field javascript_react boolean?
---@field json boolean?
---@field kotlin boolean?
---@field latex boolean?
---@field less boolean?
---@field lua boolean?
---@field makefile boolean?
---@field markdown boolean?
---@field matlab boolean?
---@field objectivec boolean?
---@field ocaml boolean?
---@field perl boolean?
---@field php boolean?
---@field powershell boolean?
---@field python boolean?
---@field restructuredtext boolean?
---@field ruby boolean?
---@field rust boolean?
---@field sass boolean?
---@field scala boolean?
---@field shell boolean?
---@field swift boolean?
---@field toml boolean?
---@field typescript boolean?
---@field viml boolean?
---@field xml boolean?
---@field yaml boolean?
---@field zsh boolean?

---@class NeopywalPlugins
---@field aerial boolean?
---@field ale boolean?
---@field alpha boolean?
---@field barbar boolean?
---@field beacon {enabled: boolean, color: ValidColorOptions?} | boolean?
---@field coc boolean?
---@field colorful_winsep {enabled: boolean, color: ValidColorOptions?} | boolean?
---@field dashboard boolean?
---@field dropbar {enabled: boolean, colored_text: boolean?}?
---@field flash {enabled: boolean, style: HighlightStyles[]?} | boolean?
---@field git_gutter boolean?
---@field gitsigns boolean?
---@field harpoon boolean?
---@field hop {enabled: boolean, style: HighlightStyles[]?} | boolean?
---@field indent_blankline {enabled: boolean, scope_color: ValidColorOptions?, colored_indent_levels: boolean?} | boolean?
---@field lazy boolean?
---@field lazygit boolean?
---@field lsp NeopywalPluginsLSP?
---@field navic {enabled: boolean, dim_text: boolean?, hide_separator: boolean?, bg_color: ValidColorOptions?} | boolean?
---@field neotree boolean?
---@field netrw boolean?
---@field noice boolean?
---@field notify boolean?
---@field nvim_cmp boolean?
---@field symbols_outline boolean?
---@field telescope {enabled: boolean, style: "classic" | "nvchad" | nil?} | boolean?
---@field treesitter boolean?
---@field undotree boolean?
---@field which_key boolean?
---@field mini NeopywalPluginsMiniNvim?

---@class NeopywalPluginsLSP
---@field enabled boolean
---@field virtual_text {errors: HighlightStyles[]?, hints: HighlightStyles[]?, information: HighlightStyles[]?, ok: HighlightStyles[]?, warnings: HighlightStyles[]?, unnecessary: HighlightStyles[]?}?
---@field underlines {errors: HighlightStyles[]?, hints: HighlightStyles[]?, information: HighlightStyles[]?, ok: HighlightStyles[]?, warnings: HighlightStyles[]?}?
---@field inlay_hints {background: boolean?, style: HighlightStyles[]?}?

---@class NeopywalPluginsMiniNvim
---@field animate boolean?
---@field clue boolean?
---@field completion {enabled: boolean, parameter_style: HighlightStyles[]?} | boolean?
---@field cursorword {enabled: boolean, style: HighlightStyles[]?} | boolean?
---@field deps boolean?
---@field diff boolean?
---@field files boolean?
---@field hipatterns {enabled: boolean, style: {fixme: HighlightStyles[]?, hack: HighlightStyles[]?, note: HighlightStyles[]?, todo: HighlightStyles[]?}?} | boolean?
---@field icons boolean?
---@field indentscope {enabled: boolean, scope_color: ValidColorOptions?} | boolean?
---@field jump {enabled: boolean, style: HighlightStyles[]?} | boolean?
---@field jump2d {enabled: boolean, style: HighlightStyles[]?} | boolean?
---@field map boolean?
---@field notify boolean?
---@field operators boolean?
---@field pick boolean?
---@field starter boolean?
---@field statusline {enabled: boolean, mode_colors: {normal: ValidColorOptions?, visual: ValidColorOptions?, insert: ValidColorOptions?, command: ValidColorOptions?, replace: ValidColorOptions?, other: ValidColorOptions?}?} | boolean?
---@field surround boolean?
---@field tabline boolean?
---@field test boolean?
---@field trailspace {enabled: boolean, color: ValidColorOptions?} | boolean?

---@class NeopywalPluginsBarbecue
---@field default_options NeopywalPluginsBarbecueOptions
---@field options NeopywalPluginsBarbecueOptions
---@field setup fun(user_config: NeopywalPluginsBarbecueOptions?)
---@field get fun(): table

---@class NeopywalPluginsBarbecueOptions
---@field dim_background boolean?
---@field dim_context boolean?
---@field dim_dirname boolean?
---@field hide_separator boolean?
---@field basename_style HighlightStyles[]?
---@field context_style HighlightStyles[]?
---@field dirname_style HighlightStyles[]?
---@field theme table | function<table>

---@class NeopywalPluginsFeline
---@field default_options NeopywalPluginsFelineOptions
---@field options NeopywalPluginsFelineOptions
---@field setup fun(user_config: NeopywalPluginsFelineOptions?)
---@field get fun(): table

---@class NeopywalPluginsFelineOptions
---@field assets {left_separator: string?, right_separator: string?, mode_icon: string?, dir: string?, file: string?, lsp: {server: string?, error: string?, warning: string?, info: string?, hint: string?}?, git: {branch: string?, added: string?, changed: string?, removed: string?}? }
---@field mode_colors table<string, table<string, string<ValidColors[]>>>
---@field sett {text: string<ValidColors[]>?, bkg: string<ValidColors[]>?, diffs: string<ValidColors[]>?, extras: string<ValidColors[]>?, curr_file: string<ValidColors[]>?, curr_dir: string<ValidColors[]>?, show_modified: boolean?, show_lazy_updates: boolean?}
---@field view {lsp: {progress: boolean?, name: boolean?, exclude_lsp_names: table?, separator: string?}?}

---@class NeopywalPluginsLualine
---@field default_options NeopywalPluginsLualineOptions
---@field options NeopywalPluginsLualineOptions
---@field setup fun(user_config: NeopywalPluginsLualineOptions?)
---@field get fun(): table

---@class NeopywalPluginsLualineOptions
---@field mode_colors {normal: ValidColorOptions?, visual: ValidColorOptions?, insert: ValidColorOptions?, command: ValidColorOptions?, replace: ValidColorOptions?, terminal: ValidColorOptions?}
---@field styles {a: HighlightStyles[]?, b: HighlightStyles[]?, c: HighlightStyles[]?, x: HighlightStyles[]?, y: HighlightStyles[]?, z: HighlightStyles[]?}
