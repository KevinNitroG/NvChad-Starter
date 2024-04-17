return {
  {
    "hrsh7th/cmp-cmdline",
    dependencies = {
      "hrsh7th/nvim-cmp",
    },
    event = "VeryLazy",
    opts = function(_, opts)
      opts = opts or {}
      local cmp = require "cmp"
      opts.mapping = cmp.mapping.preset.cmdline()
      opts.sources = cmp.config.sources({
        { name = "path" },
      }, {
        {
          name = "cmdline",
          option = {
            ignore_cmds = { "Man", "!" },
          },
        },
      })
    end,
    config = function(_, opts)
      local cmp = require "cmp"
      cmp.setup.cmdline(":", opts)
    end,
  },
}
