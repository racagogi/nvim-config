return {
    "nvim-treesitter/playground",
    config = function()
        vim.keymap.set('n', "<F6>", "<cmd>TSPlaygroundToggle<cr>")
        vim.keymap.set('n', "<M-h>", "<cmd>TSHighlightCapturesUnderCursor<cr>")
        vim.keymap.set('n', "<M-d>", "<cmd>TSNodeUnderCursor<cr>")
    end
}
