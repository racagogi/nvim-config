return {
    "numToStr/Comment.nvim",
    event = "BufEnter",
    opts = {
        padding = true,
        opleader = {
            block = "<M-c>b",
            line = "<M-c>c",
        },
        toggler = {
            block = "<M-c>b",
            line = "<M-c>c",
        },
        extra = {
            above = '<M-c>O',
            below = '<M-c>o',
            eol = '<M-c>A',
        },

    }

}
