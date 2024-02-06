vim.api.nvim_create_autocmd("FileType", {
    pattern = "*.rkt",
    callback = function()
        vim.filetype = "raket"
    end
})
vim.api.nvim_create_autocmd("FileType", {
    pattern = "*.prolog",
    callback = function()
        vim.filetype = "prolog"
    end
})
vim.api.nvim_create_autocmd("FileType", {
    pattern = "*.idiris2",
    callback = function()
        vim.filetype = "idiris2"
    end
})

vim.api.nvim_create_autocmd({ "BufEnter", "FocusGained", "InsertLeave", "CmdlineLeave", "WinEnter" }, {
    pattern = "*",
    callback = function()
        if vim.api.nvim_get_mode().mode ~= "i" then
            vim.opt.relativenumber = true
            vim.opt.concealcursor = "n"
            vim.opt.conceallevel = 3
            vim.cmd "redraw"
        end
    end,
})

vim.api.nvim_create_autocmd({ "BufLeave", "FocusLost", "InsertEnter", "CmdlineEnter", "WinLeave" }, {
    pattern = "*",
    callback = function()
        vim.opt.relativenumber = false
        vim.opt.conceallevel = 0
        vim.cmd "redraw"
    end,
})

vim.api.nvim_create_autocmd({ "CursorMoved", "InsertLeave" }, {
    pattern = "*",
    callback = function()
        vim.cmd [[exec "normal zz" ]]
        vim.cmd [[redraw]]
    end,
})
