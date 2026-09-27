return {
  {
    "folke/noice.nvim",
    opts = {
      presets = { lsp_doc_border = true }, -- 给 LSP 文档/hover 加边框
      views = {
        hover = { border = { style = "rounded", padding = { 1, 1 } } },
      },
    },
  },
}
