return {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
        vim.cmd("highlight IndentBlanklineIndent1            guifg=#cc241d gui=nocombine")
        vim.cmd("highlight IndentBlanklineIndent2            guifg=#d65d0e gui=nocombine")
        vim.cmd("highlight IndentBlanklineIndent3            guifg=#d79921 gui=nocombine")
        vim.cmd("highlight IndentBlanklineIndent4            guifg=#98971a gui=nocombine")
        vim.cmd("highlight IndentBlanklineIndent5            guifg=#458588 gui=nocombine")
        vim.cmd("highlight IndentBlanklineIndent6            guifg=#b16286 gui=nocombine")
        vim.cmd("highlight IndentBlanklineSpaceCharBlankline guifg=#076678 gui=nocombine")
        vim.cmd("highlight IndentBlanklineSpaceChar          guifg=#076678 gui=nocombine")
        vim.cmd("highlight IndentBlanklineChar               guifg=#076678 gui=nocombine")
        vim.cmd("highlight IndentBlanklineContextChar        guifg=#427b58 gui=nocombine")
        require "ibl".setup({
            indent = { highlight = {
                "IndentBlanklineIndent1",
                "IndentBlanklineIndent2",
                "IndentBlanklineIndent3",
                "IndentBlanklineIndent4",
                "IndentBlanklineIndent5",
                "IndentBlanklineIndent6" }},
            scope = { highlight = {
                "IndentBlanklineIndent1",
                "IndentBlanklineIndent2",
                "IndentBlanklineIndent3",
                "IndentBlanklineIndent4",
                "IndentBlanklineIndent5",
                "IndentBlanklineIndent6" }}
        })
    end
}
