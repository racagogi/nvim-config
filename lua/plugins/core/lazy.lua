local function setup(plugins)
    local lazy = require("lazy")
    return lazy.setup(plugins, { dev = { path = "~/plugins" } })
end
return { setup = setup }
