-- require("nvchad.term").runner({
--   id = "user-execute",
--   pos = "float",
--
--   cmd = function()
--     local os_type = require("script.get-os")
--     local file = vim.fn.expand("%")
--     local file_no_ext = vim.fn.expand("%:r")
--     local execute = {
--       Windows = {
--         python = "cls && python " .. file,
--         cpp = "cls && g++ -o " .. file .. " " .. file_no_ext .. ".exe && .\\" .. file_no_ext .. ".exe",
--       },
--       Linux = {
--         python = "clear && python3 " .. file,
--         cpp = "clear && g++ -o " .. file .. " " .. file_no_ext .. " && ./" .. file_no_ext,
--       },
--     }
--
--     return execute[os_type][vim.bo.ft]
--   end,
-- })

local M = {}


function M.runner()
    local current_filetype = vim.bo.filetype
    local getName = defaultConfig.executorMap[current_filetype]
    if getName and getName.comp then
        local getCmdRun = getCmd("comp")
        if defaultConfig.clear then
            local get_os = utils.detect_operating_system()
            if get_os == "Linux" or get_os == "macOS" then
                require("nvchad.term").runner({
                    pos = defaultConfig.pos,
                    cmd = "clear",
                    id = defaultConfig.id,
                })
            elseif get_os == "Windows" then
                require("nvchad.term").runner({
                    pos = defaultConfig.pos,
                    cmd = "cls",
                    id = defaultConfig.id,
                })
            else
                utils.show_error_message("can't clear terminal")
            end
        end
        require("nvchad.term").runner({
            pos = defaultConfig.pos,
            cmd = getCmdRun,
            id = defaultConfig.id,
        })
        if defaultConfig.autoremove then
            local fileNameWithoutExt = vim.fn.expand("%:p:r")
            utils.async_remove_file(fileNameWithoutExt)
        end
    else
        utils.show_warm_message("No command configured for this filetype.")
    end
end
retrun M.runner()
