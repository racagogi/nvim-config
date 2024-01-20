local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

local function get_plugins(dirs)
    local plugins = {}
    for _, dir in ipairs(dirs) do
        local path = table.concat({ vim.fn.stdpath("config"), "lua", "plugins", dir }, "/")
        for fname in vim.fs.dir(path) do
            local n = fname:match("^(.*)%.lua$")
            if not ((n == nil) or (n == "lazy") or (n == "init")) then
                table.insert(plugins, require(table.concat({ "plugins", dir, n }, ".")))
            end
        end
    end
    return plugins
end

require("plugins.core.lazy").setup(get_plugins({ "", "core", "util" }))
