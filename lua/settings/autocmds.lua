vim.api.nvim_create_autocmd("FileType", {
    pattern = "*.rkt",
    callback = function()
        vim.filetype="raket"
    end
})
vim.api.nvim_create_autocmd("FileType", {
    pattern = "*.prolog",
    callback = function()
        vim.filetype="prolog"
    end
})
vim.api.nvim_create_autocmd("FileType", {
    pattern = "*.idiris2",
    callback = function()
        vim.filetype="idiris2"
    end
})
