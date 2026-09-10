return {
  {
    "snacks.nvim",
    opts = function(_, opts)
      opts = opts or {}
      if vim.fn.has("win32") == 1 then
        opts.terminal = vim.tbl_deep_extend("force", opts.terminal or {}, { shell = "pwsh" })
      end
    end,
  },
}
