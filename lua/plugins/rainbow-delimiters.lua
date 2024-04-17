return {
  {
    "HiPhish/rainbow-delimiters.nvim",
    event = "BufRead",
    init = function()
      dofile(vim.g.base46_cache .. "rainbowdelimiters")
    end,
  },
}
