local servers = {
    "lua_ls"
}

return {
    "neovim/nvim-lspconfig",
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup()
        local lspconfig = require('lspconfig')
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        for _, server in ipairs(servers) do
            if (server == "lua_ls") then
                lspconfig[server].setup {
                    capabilities = capabilities,
                    settings = {
                        Lua = {
                            completion = {
                                callSnippet = "Replace"
                            },
                            diagnostics = {
                                globals = { 'vim' },
                            },
                            workspace = {
                                library = vim.api.nvim_get_runtime_file("", true),
                            },
                        }
                    }
                }
            end
        end
        vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
        vim.keymap.set('n', ']d', vim.diagnostic.goto_next)

        -- Use LspAttach autocommand to only map the following keys
        -- after the language server attaches to the current buffer
        vim.api.nvim_create_autocmd('LspAttach', {
            group = vim.api.nvim_create_augroup('UserLspConfig', {}),
            callback = function(ev)
                -- Enable completion triggered by <c-x><c-o>
                vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

                -- Buffer local mappings.
                -- See `:help vim.lsp.*` for documentation on any of the below functions
                local opts = { buffer = ev.buf }
                vim.keymap.set('n', '<space>D', vim.lsp.buf.declaration, opts)
                vim.keymap.set('n', '<space>d', vim.lsp.buf.definition, opts)
                vim.keymap.set('n', '<space>h', vim.lsp.buf.hover, opts)
                vim.keymap.set('n', '<space>i', vim.lsp.buf.implementation, opts)
                vim.keymap.set('n', '<space>s', vim.lsp.buf.signature_help, opts)
                vim.keymap.set('n', '<space>t', vim.lsp.buf.type_definition, opts)
                vim.keymap.set('n', '<space>n', vim.lsp.buf.rename, opts)
                vim.keymap.set({ 'n', 'v' }, '<space>a', vim.lsp.buf.code_action, opts)
                vim.keymap.set('n', '<space>r', vim.lsp.buf.references, opts)
                vim.keymap.set('n', '<space>f', function()
                    vim.lsp.buf.format { async = true }
                end, opts)
            end,
        })
    end
}
