require("nvim-lsp-installer").setup {}

local lsp = require('lsp-zero').preset({})







 local cmp = require("cmp")
 local cmp_select = {behavior = cmp.SelectBehavior.Select}
 -- local cmp_mappings = lsp.defaults.cmp_mappings({
 --     ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
 --     ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
 --     ['<C-y>'] = cmp.mapping.confirm({ select = true }),
 --     ['<C-Space>'] = cmp.mapping.complete(),
 -- })


lsp.ensure_installed({
    'lua_ls',
    'kotlin_language_server',
    'texlab',
})
lsp.setup_servers({
    'lua_ls',
    'kotlin_language_server',
    'texlab',
})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
    vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>', { buffer = true })
    vim.keymap.set({ 'n', 'x' }, '<C-l>', function()
        vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
    end)
end)

require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
require('lspconfig').kotlin_language_server.setup {}

lsp.setup()
