return {
    "junegunn/vim-easy-align",
    config = function ()
        vim.keymap.set('o', "<M-f>", "<Plug>(EasyAlign)")
        vim.keymap.set('v', "<M-f>", "<Plug>(EasyAlign)")
        vim.keymap.set('n', "<M-f>", "<Plug>(EasyAlign)")
    end
}
