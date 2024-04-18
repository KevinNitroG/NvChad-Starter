return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "bash",
        "python",
        "requirements",
        "cpp",
        "javascript",
        "typescript",
        "tsx",
        "html",
        "css",
        "yaml",
        "toml",
        "markdown",
        "markdown_inline",
        "gitignore",
        "gitcommit",
        "git_config",
        "gitattributes",
        "git_rebase",
        "ini",
        "json",
        "regex",
      },
    },
    init = function()
      dofile(vim.g.base46_cache .. "treesitter")
    end,
  },
  {
    -- from LazyVim: https://www.lazyvim.org/plugins/treesitter#nvim-treesitter-textobjects
    "nvim-treesitter/nvim-treesitter-textobjects",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
      -- When in diff mode, we want to use the default
      -- vim text objects c & C instead of the treesitter ones.
      local move = require "nvim-treesitter.textobjects.move" ---@type table<string,fun(...)>
      local configs = require "nvim-treesitter.configs"
      for name, fn in pairs(move) do
        if name:find "goto" == 1 then
          move[name] = function(q, ...)
            if vim.wo.diff then
              local config = configs.get_module("textobjects.move")[name] ---@type table<string,string>
              for key, query in pairs(config or {}) do
                if q == query and key:find "[%]%[][cC]" then
                  vim.cmd("normal! " .. key)
                  return
                end
              end
            end
            return fn(q, ...)
          end
        end
      end
    end,
  },
  {
    -- from LazyVim: https://www.lazyvim.org/plugins/treesitter#nvim-treesitter-context
    "nvim-treesitter/nvim-treesitter-context",
    event = "BufRead",
    opts = { mode = "cursor", max_lines = 3 },
    keys = {
      {
        "<leader>ut",
        function()
          require("treesitter-context").toggle()
        end,
        desc = "Toggle Treesitter Context",
      },
    },
  },
}
