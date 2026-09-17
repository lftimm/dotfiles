vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Show diagnostic error message' })
vim.keymap.set('n', '<leader>n', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>N', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
