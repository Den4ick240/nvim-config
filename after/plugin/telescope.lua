local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>hf', "<cmd>Telescope find_files hidden=true<cr>", {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({search = vim.fn.input("Grep > ") });
end)
vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
vim.keymap.set('n', '<leader>ph', builtin.help_tags, {})

vim.keymap.set('n', '<leader>за', builtin.find_files, {})
vim.keymap.set('n', '<C-з>', builtin.git_files, {})
vim.keymap.set('n', '<leader>зы', function()
	builtin.grep_string({search = vim.fn.input("Grep > ") });
end)

