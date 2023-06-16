vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-tree").setup({
    renderer = {
        group_empty = true
    }
})

require("nvim-tree.view").View.winopts.relativenumber = true

vim.keymap.set('n', '<A-1>', ':NvimTreeFindFileToggle<CR>')
