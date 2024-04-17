return {
  {
    "rcarriga/nvim-notify",
    lazy = false,
    -- opts = {
    --   background_colour = "#000000",
    -- },
    init = function()
      dofile(vim.g.base46_cache .. "notify")
    end,
  },
}
