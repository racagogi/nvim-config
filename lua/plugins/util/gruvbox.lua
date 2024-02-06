return {
    "ellisonleao/gruvbox.nvim",
    config = function()
        require("gruvbox").setup({
            contrast = "soft",
            overrides = {
                ["@markup.italic"] = {italic = true}
            },
        })
        vim.o.background = "light"
        vim.cmd("colorscheme gruvbox")
    end,
}
