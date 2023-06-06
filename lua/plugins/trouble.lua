return {
    "folke/trouble.nvim",
    config = function()
        require "trouble".setup {}
        vim.keymap.set('n', '<space>[', "<cmd>TroubleToggle<cr>")
        vim.keymap.set('n', '<space>]', "<cmd>TroubleToggle<cr>")
    end
}
