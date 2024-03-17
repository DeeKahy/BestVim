return {
  -- Configuration for LuaSnip, disabling default <Tab> and <S-Tab>
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
  },
  -- Configuration for nvim-cmp
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji",
    },
    opts = function(_, opts)
      local luasnip = require("luasnip")
      local cmp = require("cmp")

      -- Helper function to check if there are words before the cursor
      local has_words_before = function()
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
      end

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        -- Modify <Tab> behavior
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.confirm({ select = true }) -- Make <Tab> confirm the selection
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          elseif has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end, { "i", "s" }),

        -- Optional: modify <S-Tab> behavior, similar to above
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),

        -- Modify <CR> (Enter key) behavior to insert a newline even when the completion menu is open
        ["<CR>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.close()
            fallback() -- This makes <CR> insert a newline
          else
            fallback() -- Normal behavior when the menu is not open
          end
        end, { "i", "s" }),
      })
    end,
  },
}
