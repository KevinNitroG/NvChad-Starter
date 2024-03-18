local plugin = {
  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      handlers = {},
    },
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    event = "VeryLazy",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function(_, _)
      local os_type = require("script.get-os")
      local path
      if os_type == "Windows" then
        path = vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/Scripts/python.exe"
      else
        path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      end
      require("dap-python").setup(path)
    end,
  },
  {
    "mfussenegger/nvim-dap",
    event = "VeryLazy",
    config = function()
      require("configs.dap")
    end,
  },
}
return plugin
