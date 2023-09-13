return {
  "hrsh7th/nvim-cmp",
  name = "Cmp",
  dependencies = {
    {
      name = "Lspkind",
      "onsails/lspkind-nvim"
    },
    {
      name = "Cmp-Lua",
      "hrsh7th/cmp-nvim-lua"
    },
    {
      name = "Cmp-Lsp",
      "hrsh7th/cmp-nvim-lsp"
    },
    {
      name = "Cmp-Buffer",
      "hrsh7th/cmp-buffer"
    },
    {
      name = "Snippets",
      "L3MON4D3/LuaSnip"
    }
  },
  config = function()
    local cmp_status_ok, cmp = pcall(require, "cmp")
    if (not cmp_status_ok) then return end

    local lspkind_status_ok, lspkind = pcall(require, 'lspkind')
    if (not lspkind_status_ok) then return end

    local luasnip_status_ok, luasnip = pcall(require, 'luasnip')
    if (not luasnip_status_ok) then return end

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = true
        }),
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp', priority = 10 },
        { name = 'buffer', priority = 7 },
        { name = 'path', priority = 4},
      }),
      formatting = {
        format = lspkind.cmp_format({ with_text = false, maxwidth = 50 })
      }
    })

    vim.cmd [[
      set completeopt=menuone,noinsert,noselect
      highlight! default link CmpItemKind CmpItemMenuDefault
    ]]
  end,
}
