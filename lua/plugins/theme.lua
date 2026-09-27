return {
  -- 先掐掉 LazyVim 的默认主题，不然它会盖住你
  -- { "folke/tokyonight.nvim", enabled = false },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000, -- 关键：高优先级 + 非懒加载
    opts = {
      flavour = "mocha", -- 钉死，别 auto（auto 会跟系统切 Latte）
      transparent_background = false, -- 背景要实
      term_colors = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        treesitter = true,
        noice = true,
        telescope = { enabled = true },
        native_lsp = { enabled = true },
        mini = { enabled = true },
      },
      -- highlight_overrides = {
      --   mocha = function(c)
      --     return {
      --       -- 浮窗：实底 + 蓝边（原来 NormalFloat→Pmenu、FloatBorder→WinSeparator，都是暗的）
      --       NormalFloat = { bg = c.mantle },
      --       FloatBorder = { fg = c.blue, bg = c.mantle },
      --       FloatTitle = { fg = c.blue, bg = c.mantle, bold = true },
      --       -- LSP 引用高亮：默认借 Visual，太亮，换成淡底
      --       LspReferenceText = { bg = c.surface0 },
      --       LspReferenceRead = { bg = c.surface0 },
      --       LspReferenceWrite = { bg = c.surface1, bold = true },
      --       -- 补全菜单跟浮窗一个底色，视觉统一
      --       Pmenu = { bg = c.mantle },
      --       -- 分屏线提亮一档
      --       WinSeparator = { fg = c.surface1 },
      --     }
      --   end,
      -- },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end,
  },
  { "LazyVim/LazyVim", opts = {
    colorscheme = function()
      vim.cmd.colorscheme("catppuccin")
    end,
  } },
}
