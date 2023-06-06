return {
    "ziontee113/icon-picker.nvim",
    dependencies = { "stevearc/dressing.nvim" },
    config = function()
        require("icon-picker").setup({ disable_legacy_commands = true })
        vim.keymap.set({ "i", "n" }, "<M-1>", "<cmd>IconPickerNormal alt_font emoji nerd_font_v3  symbols<CR>")
    end,
}
