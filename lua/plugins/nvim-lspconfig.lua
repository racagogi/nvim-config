local servers = {
"lua_ls"
}

return {
    "neovim/nvim-lspconfig",
    config = function()
        local lspconfig = require('lspconfig')
        for _, server in ipairs(servers) do
            if (server == "lua_ls") then 
                lspconfig[server].setup{}
            end 
        end
    end
}
