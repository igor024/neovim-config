local lspconfig = require('lspconfig')

-- Setup nvim-cmp
local cmp = require'cmp'
cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },

  }, {
    { name = 'buffer' },
    { name = 'path' }
  })
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').pyright.setup({
  capabilities = capabilities
})


