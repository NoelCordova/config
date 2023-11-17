local builtin = require('telescope.builtin')

vim.keymap.set("n", "<Leader>f", builtin.live_grep, {})
vim.keymap.set("n", "<Leader>p", builtin.find_files, {})

