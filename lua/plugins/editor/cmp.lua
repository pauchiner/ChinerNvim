return {
  "hrsh7th/nvim-cmp",
  name = "Cmp",
  dependencies = {
    {
      name = "Lspkind",
      "onsails/lspkind-nvim",
    },
    {
      name = "Cmp-Lua",
      "hrsh7th/cmp-nvim-lua",
    },
    {
      name = "Cmp-Lsp",
      "hrsh7th/cmp-nvim-lsp",
    },
    {
      name = "Cmp-Buffer",
      "hrsh7th/cmp-buffer",
    },
    {
      name = "Snippets",
      "L3MON4D3/LuaSnip",
    },
  },
  config = function()
    local cmp_status_ok, cmp = pcall(require, "cmp")
    if not cmp_status_ok then
      return
    end

    local lspkind_status_ok, lspkind = pcall(require, "lspkind")
    if not lspkind_status_ok then
      return
    end

    local luasnip_status_ok, luasnip = pcall(require, "luasnip")
    if not luasnip_status_ok then
      return
    end

    local has_words_before = function()
      unpack = unpack or table.unpack
      local line, col = unpack(vim.api.nvim_win_get_cursor(0))
      return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
    end

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },

      mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
            -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
            -- that way you will only jump inside the snippet region
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          elseif has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end, { "i", "s" }),

        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),

        ["<CR>"] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        }),
      }),

      sources = cmp.config.sources({
        { name = "nvim_lsp", priority = 10 },
        { name = "buffer", priority = 7 },
        { name = "path", priority = 4 },
      }),

      formatting = {
        format = lspkind.cmp_format({ mode = "symbol", preset = "codicons" }),
      },
    })
  end,
}
