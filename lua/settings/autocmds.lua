local fn = vim.fn
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
        vim.cmd [[exec "normal zz"
                 redraw]]
    end,
})

vim.api.nvim_create_autocmd({ "BufWrite" }, {
    pattern = "*",
    callback = function()
        local function mkdir()
            local dir = vim.fn.expand('<afile>:p:h')
            if dir:find('%l+://') == 1 then
                return
            end

            if vim.fn.isdirectory(dir) == 0 then
                vim.fn.mkdir(dir, 'p')
            end
        end
        mkdir()
    end,
})

vim.api.nvim_create_autocmd("BufRead", {
    callback = function(opts)
        vim.api.nvim_create_autocmd("BufWinEnter", {
            buffer = opts.buf,
            callback = function()
                local ignore_buftype = { "quickfix", "nofile", "help" }
                local ignore_filetype = { "gitcommit", "gitrebase", "svn", "hgcommit" }
                local open_folds = 1
                if vim.tbl_contains(ignore_buftype, vim.api.nvim_get_option_value("buftype", {})) or
                    vim.tbl_contains(ignore_filetype, vim.api.nvim_get_option_value("filetype", {})) or
                    fn.line(".") > 1
                then
                    return
                end
                local last_line = fn.line([['"]])
                local buff_last_line = fn.line("$")
                local window_last_line = fn.line("w$")
                local window_first_line = fn.line("w0")
                if last_line > 0 and last_line <= buff_last_line then
                    if window_last_line == buff_last_line then
                        vim.api.nvim_command([[keepjumps normal! g`"]])
                    elseif buff_last_line - last_line > ((window_last_line - window_first_line) / 2) - 1 then
                        vim.api.nvim_command([[keepjumps normal! g`"zz]])
                    else
                        vim.api.nvim_command([[keepjumps normal! G'"<c-e>]])
                    end
                end
                if fn.foldclosed(fn.line(".")) ~= -1 and open_folds == 1 then
                    vim.api.nvim_command([[normal! zvzz]])
                end
            end,
        })
    end,
})
