return {
  {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    dependencies = { { "nvim-lua/plenary.nvim", lazy = true } },
    keys = {
      { "<leader>e", "<cmd>Yazi<cr>", desc = "yazi：光标所在文件" },
      { "<leader>E", "<cmd>Yazi cwd<cr>", desc = "yazi：当前工作目录" },
      { "<c-up>", "<cmd>Yazi toggle<cr>", desc = "恢复上次 yazi 会话" },
    },
    opts = {
      open_for_directories = true,
    },
  },
}
