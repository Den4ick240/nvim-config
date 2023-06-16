local projectlaunch = require('projectlaunch')

projectlaunch.setup()

vim.keymap.set('n', '<F10>', projectlaunch.toggle_main_menu, {noremap = true, expr = false, buffer = false})
