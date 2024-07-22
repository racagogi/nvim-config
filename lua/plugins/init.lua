local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
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
            table.insert(plugins, require(table.concat({ "plugins", dir, n }, ".")))
        end
    end
    return plugins
end

local function setup(plugins)
    local lazy = require("lazy")
    return lazy.setup(plugins)
end

setup(get_plugins({ "lsp", "util", "sitter" }))
