return {
    "TimUntersberger/neogit",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
        vim.cmd "hi NeogitNotificationInfo guifg=#98971a"
        vim.cmd "hi NeogitNotificationWarning guifg=#d79921"
        vim.cmd "hi NeogitNotificationError guifg=#cc241d"
        require 'neogit'.setup {
            mappings = {
                status = {
                    ["P"] = "",
                    ["f"] = "PushPopup"
                }
            }
        }
        vim.keymap.set('n', "<F3>", "<cmd>Neogit<CR>")
    end
}
