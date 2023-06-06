return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        'nvim-lua/plenary.nvim',
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>tf', builtin.find_files, {})
        vim.keymap.set('n', '<leader>tb', builtin.buffers, {})
        vim.keymap.set('n', '<leader>th', builtin.command_history, {})
        vim.keymap.set('n', '<leader>tc', builtin.highlights, {})
        vim.keymap.set('n', '<leader>tk', builtin.keymaps, {})
    end
}
