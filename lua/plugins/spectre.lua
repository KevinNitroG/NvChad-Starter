return {
  {
    "nvim-pack/nvim-spectre",
    cmd = { "Spectre" },
    keys = {
      { "<leader>Ss", '<cmd>lua require("spectre").toggle()<CR>', desc = "Toggle Spectre" },
      {
        "<leader>Sw",
        '<cmd>lua require("spectre").open_visual({select_word=true})<CR>',
        desc = "Spectre Search current word",
      },
      {
        "<leader>Sw",
        '<esc><cmd>lua require("spectre").open_visual()<CR>',
        mode = "v",
        desc = "Spectre Search current word",
      },
      {
        "<leader>Sf",
        '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>',
        desc = "Spectre Search on current file",
      },
    },
  },
}
