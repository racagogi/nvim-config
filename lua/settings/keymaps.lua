local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<S-v>', '<C-v>', opts)
vim.keymap.set('n', '<C-s>', ':wq<CR>', opts)
vim.keymap.set('n', '<C-q>', ':qa<CR>', opts)
vim.keymap.set('n', 'j', 'gj', opts)
vim.keymap.set('n', 'k', 'gk', opts)
vim.keymap.set('n', '<F5>', ':w<CR>', opts)
