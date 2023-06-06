return {
    "rktjmp/highlight-current-n.nvim",
    config = function()
        vim.api.nvim_create_augroup("ClearSearchHL", { clear = true })
        vim.cmd([[
            augroup ClearSearchHL
            autocmd!
            autocmd CmdlineEnter /,\\? set hlsearch
            autocmd CmdlineLeave /,\\? set nohlsearch
            autocmd CmdlineLeave /,\\? lua require('highlight_current_n')['/,?']()
            augroup END "
        ]])
        require("highlight_current_n").setup({ highlight_group = "IncSearch" })
        local opts = { noremap = true, silent = true }
        vim.keymap.set("n", "N", "<Plug>(highlight-current-n-N)", opts)
        vim.keymap.set("n", "n", "<Plug>(highlight-current-n-n)", opts)
    end
}
