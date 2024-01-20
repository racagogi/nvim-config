return {
    "drybalka/tree-climber.nvim",
    config = function()
        local opts = {
            noremap = true,
            silent = true
        }
        vim.keymap.set({ "i", 'n', "o" }, "gh", "<cmd>lua require('tree-climber').goto_parent()<cr>", opts)
        vim.keymap.set({ "i", 'n', "o" }, "gj", "<cmd>lua require('tree-climber').goto_next()<cr>", opts)
        vim.keymap.set({ "i", 'n', "o" }, "gk", "<cmd>lua require('tree-climber').goto_prev()<cr>", opts)
        vim.keymap.set({ "i", 'n', "o" }, "gl", "<cmd>lua require('tree-climber').goto_child()<cr>", opts)
    end
}
