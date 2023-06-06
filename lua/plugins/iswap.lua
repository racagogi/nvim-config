return {
    "mizlan/iswap.nvim",
    config = function ()
        require'iswap'.setup{}
        vim.keymap.set('n','<M-n>',"<cmd>ISwapNodeWith<cr>")
    end
}
