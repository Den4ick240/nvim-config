local projectlaunch = require('projectlaunch')

projectlaunch.setup()

vim.keymap.set('n', '<F9>', projectlaunch.toggle_main_menu, {noremap = true, expr = false, buffer = false})
