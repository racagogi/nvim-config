return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        event = "VeryLazy",
        opts = {
            extensions = { "nvim-tree", "symbols-outline" },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {},
                lualine_x = { "location" },
                lualine_y = {},
                lualine_z = {}
            },
            inactive_winbar = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {}
            },
            options = {
                component_separators = { left = "\238\130\177", right = "\238\130\179" },
                globalstatus = true,
                icons_enabled = true,
                section_separators = { left = "\238\130\176", right = "\238\130\178" },
                theme = "auto",
                always_divide_middle = false
            },
            sections = {
                lualine_a = { "fileformat", "encoding", "mode" },
                lualine_b = { "branch", "diff", "diagnostics" },
                lualine_c = { "buffers" },
                lualine_x = {},
                lualine_y = { "filetype" },
                lualine_z = { "progress", function()
                    local msg = "No Active Lsp"
                    local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
                    local clients = vim.lsp.get_active_clients()
                    if (next(clients) == nil) then
                        local lsp_status = ("󱐥 " .. msg)
                        return lsp_status
                    else
                    end
                    for _, client in ipairs(clients) do
                        local filetypes = client.config.filetypes
                        if (filetypes and (vim.fn.index(filetypes, buf_ft) ~= (-1))) then
                            local lsp_status = ("󰚥 " .. client.name)
                            return lsp_status
                        else
                        end
                    end
                    return nil
                end }
            },
            winbar = { lualine_a = {}, lualine_b = {}, lualine_c = {}, lualine_x = {}, lualine_y = {}, lualine_z = {} }
        }
    } }
