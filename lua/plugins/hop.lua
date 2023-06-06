return {
    "phaazon/hop.nvim",
    config = function()
        require 'hop'.setup()
        local hop = require('hop')
        local directions = require('hop.hint').HintDirection
        local opts = { noremap = true, silent = true }
        vim.keymap.set({ 'o', 'n', 'v' }, 'f', function()
            hop.hint_char1({ direction = directions.AFTER_CURSOR })
        end, opts)
        vim.keymap.set({ 'o', 'n', 'v' }, 'F', function()
            hop.hint_char1({ direction = directions.BEFORE_CURSOR, })
        end, opts)
        vim.keymap.set({ 'o', 'n', 'v' }, 't', function()
            hop.hint_char1({ direction = directions.AFTER_CURSOR, hint_offset = -1 })
        end, opts)
        vim.keymap.set({ 'o', 'n', 'v' }, 'T', function()
            hop.hint_char1({ direction = directions.BEFORE_CURSOR, hint_offset = 1 })
        end, opts)
        vim.keymap.set({ 'o', 'n', 'v' }, '<M-v>', "<cmd>HopVertical<cr>", opts)
        vim.keymap.set({ 'o', 'n', 'v' }, '<M-p>', "<cmd>HopPattern<cr>", opts)
        vim.keymap.set({ 'o', 'n', 'v' }, '<M-w>', "<cmd>HopWord<cr>", opts)
    end
}
