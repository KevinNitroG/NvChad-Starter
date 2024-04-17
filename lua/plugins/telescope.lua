return {
  {
    "nvim-telescope/telescope.nvim",
    event = "VeryLazy",
    cmd = "Telescope",
    keys = {
      {
        "<leader>,",
        "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>",
        desc = "Switch Buffer",
      },
      { "<leader>:", "<cmd>Telescope command_history<cr>", desc = "Search Command History" },
      -- find
      { "<leader>fb", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", desc = "Find Buffers" },
      { "<leader>fg", "<cmd>Telescope git_files<cr>", desc = "Find Files (git-files)" },
      { "<leader>fo", "<cmd>Telescope oldfiles<cr>", desc = "Find Old Files" },
      -- git
      { "<leader>gc", "<cmd>Telescope git_commits<CR>", desc = "Git Commits" },
      { "<leader>gs", "<cmd>Telescope git_status<CR>", desc = "Git Status" },
      -- search
      { '<leader>s"', "<cmd>Telescope registers<cr>", desc = "Search Registers" },
      { "<leader>sa", "<cmd>Telescope autocommands<cr>", desc = "Search Auto Commands" },
      { "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Search Buffer" },
      { "<leader>sc", "<cmd>Telescope command_history<cr>", desc = "Search Command History" },
      { "<leader>sC", "<cmd>Telescope commands<cr>", desc = "Search Commands" },
      { "<leader>sd", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "Search Document Diagnostics" },
      { "<leader>sD", "<cmd>Telescope diagnostics<cr>", desc = "Search Workspace Diagnostics" },
      { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Search Help Pages" },
      { "<leader>sH", "<cmd>Telescope highlights<cr>", desc = "Search Search Highlight Groups" },
      { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Search Key Maps" },
      { "<leader>sM", "<cmd>Telescope man_pages<cr>", desc = "Search Man Pages" },
      { "<leader>sm", "<cmd>Telescope marks<cr>", desc = "Search Jump to Mark" },
      { "<leader>so", "<cmd>Telescope vim_options<cr>", desc = "Search Options" },
      { "<leader>sR", "<cmd>Telescope resume<cr>", desc = "Search Resume" },
    },
    init = function()
      dofile(vim.g.base46_cache .. "telescope")
    end,
  },
}
