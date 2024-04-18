local M = {}

M.get_cmd = function()
  local file = vim.fn.expand "%"
  local file_no_ext = vim.fn.expand "%:r"

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

  if vim.g.is_windows then
    return cmds.windows[vim.bo.filetype]
  end
  return cmds.linux[vim.bo.filetype]
end

return M
