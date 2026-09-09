return {
  {
    "snacks.nvim",
    opts = function()
      if vim.fn.has("win32") == 1 then
        return {
          terminal = {
            shell = "pwsh",
          },
        }
      end
    end,
  },
}
