return {
    "folke/zen-mode.nvim",
    config = function()
        require "zen-mode".setup {}
        local opts = {
            noremap = true,
            silent = true
        }
        vim.keymap.set('i', "<M-z>", "<Cmd>ZenMode<CR>", opts)
        vim.keymap.set('n', "<M-z>", "<Cmd>ZenMode<CR>", opts)
    end
}
