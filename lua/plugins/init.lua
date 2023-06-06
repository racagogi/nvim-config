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

local function get_plugins()
  local plugins = {}
  local path = (vim.fn.stdpath("config") .. "/lua/plugins")
  for fname in vim.fs.dir(path) do
    local fname0 = fname:match("^(.*)%.lua$")
    if not (("lazy" == fname0) or ("init" == fname0)) then
      table.insert(plugins, require(("plugins." .. fname0)))
    else
    end
  end
  return plugins
end

return require("plugins.lazy").setup(get_plugins())
