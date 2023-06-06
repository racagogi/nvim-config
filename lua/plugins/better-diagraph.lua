return {
    "protex/better-digraphs.nvim",
    config = function()
        vim.keymap.set("i", "<M-2>", "<Cmd>lua require'better-digraphs'.digraphs(\"insert\")<CR>")
        vim.keymap.set("n", "<M-2>", "<Cmd>lua require'better-digraphs'.digraphs(\"normal\")<CR>")
    end
}
