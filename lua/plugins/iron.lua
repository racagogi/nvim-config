return {
    "hkupty/iron.nvim",
    config = function()
        local iron = require("iron.core")
        local view = require("iron.view")
        iron.setup {
            config = {
                scratch_repl = true,
                repl_definition = {
                    sh = {
                        command = { "zsh" }
                    },
                    lua = {
                        command = { "luajit" }
                    },
                    scheme = {
                        command = { "csi" }
                    }
                },
                repl_open_cmd = view.split.vertical.botright(50)
            },
            keymaps = {
                send_motion = "<leader>m",
                visual_send = "<leader>v",
                send_file = "<leader>f",
                send_line = "<leader>l",
                exit = "<leader>q",
                clear = "<leader>c",
            },
            highlight = {
                italic = true
            },
            ignore_blank_lines = true,
        }

        vim.keymap.set('n', '<F4>', '<cmd>IronRepl<cr>')
    end
}
