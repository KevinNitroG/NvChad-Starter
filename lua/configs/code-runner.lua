local M = {}

M.get_cmd = function()
  local file = vim.fn.expand "%"
  local file_no_ext = vim.fn.expand "%:r"
  local os_type = vim.g.os_type or require "configs.get-os"

  local cmds = {
    windows = {
      python = "python -u " .. file,
      cpp = "g++ " .. file .. " -o " .. file_no_ext .. " && .\\" .. file_no_ext,
      javascript = "node " .. file,
      typescript = "ts-node " .. file,
      powershell = "powershell -ExecutionPolicy ByPass -File " .. file,
      rust = "rustc " .. file .. " && .\\" .. file_no_ext,
    },
    linux = {
      python = "python3 -u " .. file,
      cpp = "g++ " .. file .. " -o " .. file_no_ext .. " && ./" .. file_no_ext,
      javascript = "node " .. file,
      typescript = "ts-node " .. file,
      powershell = "powershell -ExecutionPolicy ByPass -File " .. file,
      rust = "rustc " .. file .. " && ./" .. file_no_ext,
      sh = "chmod u+x " .. file .. " && ./" .. file,
    },
  }

  if os_type == "windows" then
    return cmds.windows[vim.bo.filetype]
  end
  if os_type == "linux" then
    return cmds.linux[vim.bo.filetype]
  end
  return 'echo "No cmd for current OS"'
end

return M
