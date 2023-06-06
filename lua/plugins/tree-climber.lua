return {
    "drybalka/tree-climber.nvim",
    config = function()
        local opts = {
            noremap = true,
            silent = true
        }
        vim.keymap.set({ "i", 'n', "o" }, "<M-h>", "<cmd>lua require('tree-climber').goto_parent()<cr>", opts)
        vim.keymap.set({ "i", 'n', "o" }, "<M-j>", "<cmd>lua require('tree-climber').goto_next()<cr>", opts)
        vim.keymap.set({ "i", 'n', "o" }, "<M-k>", "<cmd>lua require('tree-climber').goto_prev()<cr>", opts)
        vim.keymap.set({ "i", 'n', "o" }, "<M-l>", "<cmd>lua require('tree-climber').goto_child()<cr>", opts)
    end
}
