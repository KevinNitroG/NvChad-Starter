-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "catppuccin",
  transparency = false,

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },

  cmp = {
    icons = true,
    lspkind_text = true,
    style = "default", -- default/flat_light/flat_dark/atom/atom_colored
  },

  telescope = { style = "bordered" },

  statusline = {
    theme = "default", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "default",
    order = nil,
    modules = nil,
  },

  -- lazyload it when there are 1+ buffers
  tabufline = {
    enabled = true,
    lazyload = true,
    order = { "treeOffset", "buffers", "tabs", "btns" },
    modules = nil,
  },

  nvdash = {
    load_on_startup = true,
    header = {
      "██╗  ██╗███████╗██╗   ██╗██╗███╗   ███╗",
      "██║ ██╔╝██╔════╝██║   ██║██║████╗ ████║",
      "█████╔╝ █████╗  ██║   ██║██║██╔████╔██║",
      "██╔═██╗ ██╔══╝  ╚██╗ ██╔╝██║██║╚██╔╝██║",
      "██║  ██╗███████╗ ╚████╔╝ ██║██║ ╚═╝ ██║",
      "╚═╝  ╚═╝╚══════╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
    },
    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Old Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc s m", "Telescope marks" },
      { "  Themes", "Spc u t", "Telescope themes" },
      { "  Mappings", "Spc u C", "NvCheatsheet" },
    },
  },

  lsp = { signature = true },

  term = {
    float = {
      row = 0.1,
      col = 0.15,
      width = 0.7,
      height = 0.7,
    },
  },
}

M.base46 = {
  integrations = {
    "blankline",
    "cmp",
    "notify",
    "rainbowdelimiters",
    "dap",
    "lsp",
    "mason",
    "nvdash",
    "devicons",
    "trouble",
    "telescope",
    "treesitter",
    "nvcheatsheet",
    "bufferline",
    "codeactionmenu",
    "whichkey",
    "nvimtree",
  },
}

return M
