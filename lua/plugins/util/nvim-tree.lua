return {
    "nvim-tree/nvim-tree.lua",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local function on_attach(bufnr)
            local api = require("nvim-tree.api")
            local function opts(desc)
                return { buffer = bufnr, desc = ("nvim-tree" .. desc), noremap = true, silent = true }
            end
            vim.keymap.set("n", "<CR>", api.node.open.edit, opts("Open"))
            vim.keymap.set("n", "R", api.tree.reload, opts("Refresh"))
            vim.keymap.set("n", "a", api.fs.create, opts("Create"))
            vim.keymap.set("n", "d", api.fs.remove, opts("Delete"))
            vim.keymap.set("n", "n", api.fs.rename, opts("Rename"))
            vim.keymap.set("n", "x", api.fs.cut, opts("Cut"))
            vim.keymap.set("n", "c", api.fs.copy.node, opts("Copy"))
            vim.keymap.set("n", "p", api.fs.paste, opts("Paste"))
            vim.keymap.set("n", "y", api.fs.copy.absolute_path, opts("Copy Absolute Path"))
            vim.keymap.set("n", "q", api.tree.close, opts("Close"))
            vim.keymap.set("n", "zc", api.tree.collapse_all, opts("Collapse"))
            vim.keymap.set("n", "zR", api.tree.expand_all, opts("Expand All"))
            vim.keymap.set("n", "i", api.node.show_info_popup, opts("Info"))
        end
        require("nvim-tree").setup({ on_attach = on_attach })
        vim.keymap.set("n", "<F1>", ":NvimTreeToggle<CR>")
    end
}
