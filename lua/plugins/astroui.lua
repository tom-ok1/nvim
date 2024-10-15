-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    -- change colorscheme
    colorscheme = "catppuccin",
    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    highlights = {
      -- init = { -- this table overrides highlights in all themes
      --   enable when want get transparency
      --   Normal = { bg = "none", fg = "#F2F3F5" },
      --   SignColumn = { bg = "none" },
      --   FoldColumn = { bg = "none" },
      --   NormalFloat = { bg = "none" },
      --   NormalNC = { bg = "none" },
      --   NormalSB = { bg = "none" },
      --   FloatBorder = { bg = "none" },
      --   FloatTitle = { fg = "#F2F3F5", bg = "none" },
      --   -- WinBar
      --   WinBar = { bg = "none" },
      --   WinSeparator = { fg = "#696969", bg = "none" },
      --   WinBarNC = { bg = "none" },
      --   WhichKeyFloat = { bg = "none" },
      --   -- Telescope
      --   TelescopeMatching = { bg = "none" },
      --   TelescopeSelection = { bg = "none" },
      --   TelescopePromptTitle = { bg = "none" },
      --   TelescopePromptPrefix = { bg = "none" },
      --   TelescopePromptCounter = { bg = "none" },
      --   TelescopePromptNormal = { bg = "none" },
      --   TelescopePromptBorder = { bg = "none" },
      --   TelescopeResultsTitle = { bg = "none" },
      --   TelescopeResultsNormal = { bg = "none" },
      --   TelescopeResultsBorder = { bg = "none" },
      --   TelescopePreviewTitle = { bg = "none" },
      --   TelescopePreviewNormal = { bg = "none" },
      --   TelescopePreviewBorder = { bg = "none" },
      --   -- Diagnosis
      --   DiagnosticVirtualTextHint = { fg = "#F2F3F5", bg = "none" },
      --   DiagnosticVirtualTextWarn = { fg = "#e0af68", bg = "none" },
      --   DiagnosticVirtualTextInfo = { fg = "#9ece6a", bg = "none" },
      --   DiagnosticVirtualTextError = { fg = "#bd2c00", bg = "none" },
      --   -- NeoTree
      --   NeoTreeNormal = { bg = "none" },
      --   NeoTreeNormalNC = { bg = "none" },
      --   NeoTreeTabInactive = { bg = "none" },
      --   NeoTreeTabSeparatorActive = { fg = "#696969", bg = "none" },
      --   NeoTreeTabSeparatorInactive = { bg = "none" },
      --   NvimTreeTabSeparatorActive = { bg = "none" },
      --   NvimTreeTabSeparatorInactive = { bg = "none" },
      --   MiniTabLineFill = { bg = "none" },
      --   NeoTreeFloatBorder = { bg = "none" },
      --   NeoTreeWinSeparator = { bg = "none" },
      --   -- StatusLine
      --   GitSignsChangeCul = { bg = "none" },
      --   GitSignsAddCul = { bg = "none" },
      --   StatusLine = { fg = "#F2F3F5", bg = "none" },
      --   StatusLineNC = { fg = "#F2F3F5", bg = "none" },
      --   StatusLineTerm = { fg = "#F2F3F5", bg = "none" },
      --   StatusLineTermNC = { fg = "#F2F3F5", bg = "none" },
      --   VertSplit = { bg = "none" },
      --   -- QuickFixLine
      --   QuickFixLine = { bg = "none" },
      --   -- TabLine
      --   TabLine = { bg = "none" },
      --   TabLineSel = { bg = "none" },
      --   TabLineFill = { bg = "none" },
      --   -- Cursor
      --   CursorLineNr = { bg = "none" },
      --   CursorLine = { bg = "none" },
      --   ColorColumn = { bg = "none" },
      --   -- Notifications
      --   NotifyWARNIcon = { bg = "none" },
      --   NotifyINFOIcon = { bg = "none" },
      --   NotifyDEBUGIcon = { bg = "none" },
      --   NotifyTRACEIcon = { bg = "none" },
      --   NotifyINFOBody = { bg = "none" },
      --   NotifyWARNBody = { bg = "none" },
      --   NotifyERRORBody = { bg = "none" },
      --   NotifyERRORTitle = { bg = "none" },
      --   NotifyDEBUGBody = { bg = "none" },
      --   NotifyDEBUGTitle = { bg = "none" },
      --   NotifyTRACEBody = { bg = "none" },
      --   NotifyTRACETitle = { bg = "none" },
      --   NotifyINFOTitle = { bg = "none" },
      --   NotifyINFOBorder = { bg = "none" },
      --   NotifyWARNBorder = { bg = "none" },
      --   NotifyWARNTitle = { bg = "none" },
      --   NotifyERRORBorder = { fg = "#bd2c00", bg = "none" },
      --   NotifyDEBUGBorder = { bg = "none" },
      --   NotifyTRACEBorder = { bg = "none" },
      --   NotifyBackground = { bg = "#000000" },
      -- },
      astrotheme = { -- a table of overrides/changes when applying the astrotheme theme
        -- Normal = { bg = "#000000" },
      },
    },
    -- Icons can be configured throughout the interface
    icons = {
      -- configure the loading of the lsp in the status line
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
    },
  },
}
