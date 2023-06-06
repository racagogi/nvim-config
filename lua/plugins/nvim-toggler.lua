return {
    "nguyenvukhang/nvim-toggler",
    config = function()
        require 'nvim-toggler'.setup {
            inverses = {
                ["#t"] = "#f",
                ["true"] = "false"
            },
            remove_default_keybinds = true
        }
        vim.keymap.set('n', "<M-t>", require('nvim-toggler').toggle)
    end
}
