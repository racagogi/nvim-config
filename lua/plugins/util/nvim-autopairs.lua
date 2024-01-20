return {
    "windwp/nvim-autopairs",
    config = function()
        require("nvim-autopairs").setup {
            ignored_next_char = "[%w%.]",
            enable_check_bracket_line = false,
            fast_wrap = {
                map = '<M-e>',
                chars = { '{', '[', '(', '"', "'" },
                pattern = [=[[%'%"%>%]%)%}%,]]=],
                end_key = '$',
                keys = 'qwertyuiopzxcvbnmasdfghjkl',
                check_comma = true,
                highlight = 'Search',
                highlight_grey = 'Comment'
            },
        }
        require("nvim-autopairs").get_rules("'")[1].not_filetypes = { "scheme", "lisp" }
        require("nvim-autopairs").get_rules("`")[1].not_filetypes = { "scheme", "lisp" }
    end
}
