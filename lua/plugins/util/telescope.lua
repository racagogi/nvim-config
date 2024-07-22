return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        'nvim-lua/plenary.nvim',
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<M-3>f', builtin.find_files, {})
        vim.keymap.set('n', '<M-3>b', builtin.buffers, {})
        vim.keymap.set('n', '<M-3>h', builtin.command_history, {})
        vim.keymap.set('n', '<M-3>c', builtin.highlights, {})
        vim.keymap.set('n', '<M-3>k', builtin.keymaps, {})
    end
}
