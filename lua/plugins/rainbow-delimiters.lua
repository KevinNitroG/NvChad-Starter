return {
  {
    "HiPhish/rainbow-delimiters.nvim",
    event = "BufReadPre",
    init = function()
      dofile(vim.g.base46_cache .. "rainbowdelimiters")
    end,
  },
}
