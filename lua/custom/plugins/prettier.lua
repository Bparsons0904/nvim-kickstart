return {
    { 'neovim/nvim-lspconfig' },
    {
        'jose-elias-alvarez/null-ls.nvim',
        config = function(
        )
            require('null-ls').setup({
                sources = {
                    require('null-ls').builtins.formatting.prettier.with({
                        extra_args = { "--tab-width", "2", "--single-quote", "--trailing-comma", "all" },
                        -- other prettier options here
                    }),
                },
            })
        end
    },
    {
        'MunifTanjim/prettier.nvim',
        config = function()
            require('prettier').setup({
                -- prettier options
                tabWidth = 2,
                singleQuote = true,
                trailingComma = 'all',
                configPrecedence = 'prefer-file',
                useEditorConfig = true,
                -- autoformat options
                noSave = false,
                enable = true,
                formatter = 'prettierd',
                filetypes = {
                    'javascript',
                    'javascriptreact',
                    'typescript',
                    'typescriptreact',
                    'css',
                    'scss',
                    'json',
                    'graphql',
                    'markdown',
                    'vue',
                    'html',
                    'yaml',
                    'svelte',
                    'php',
                    'python',
                    'ruby',
                    'lua',
                    'elixir',
                }
            })
            vim.api.nvim_create_autocmd("BufWritePre", {
                pattern = { "*.js", "*.jsx", "*.ts", "*.tsx", "*.css", "*.scss", "*.json", "*.md", "*.html", "*.yaml", "*.lua", "*.py", "*.rb", "*.ex", "*.vue", "*.svelte", "*.php" },
                callback = function()
                    vim.lsp.buf.format()
                end,
            })
        end
    },
}
