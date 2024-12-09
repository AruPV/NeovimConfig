require("aru.config.editor")
require("aru.config.global_keymaps")

-- This should be moved to a file of its own

vim.filetype.add({
	extension = {
		cppm = 'c'
	}
})

local M = {}

function M.setup_godot_server()
    -- Check for project.godot file
    local projectfile = vim.fn.getcwd() .. '/project.godot'
    if vim.fn.filereadable(projectfile) == 0 then
        return
    end

    -- Check if server is already running
    local servers = vim.fn.serverlist()
    local pipe_path = '/tmp/godot.pipe'
    
    -- Look for existing server using this pipe
    for _, server in ipairs(servers) do
        if vim.fn.servername(server) == pipe_path then
            return  -- Server already running
        end
    end

    -- Start server only if not already running
    vim.fn.serverstart(pipe_path)
end

-- Auto-setup when entering a Godot project
vim.api.nvim_create_autocmd({"DirChanged"}, {
    callback = function()
        M.setup_godot_server()
    end,
})

-- Initial setup on script load
M.setup_godot_server()

return M
