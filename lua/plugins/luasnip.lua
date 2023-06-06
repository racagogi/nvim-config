return {
    "L3MON4D3/LuaSnip",
    dependencies = {
        "rafamadriz/friendly-snippets",
        "molleweide/LuaSnip-snippets.nvim"
    },
    config = function()
        local luasnip = require("luasnip")
        require("luasnip.loaders.from_vscode").lazy_load()
        luasnip.snippets = require("luasnip_snippets").load_snippets()
    end
}
