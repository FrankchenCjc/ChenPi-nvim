-- lua/plugins/ime.lua
return {
  {
    "keaising/im-select.nvim",
    event = "VeryLazy",
    opts = {
      default_im = vim.fn.has("win32") == 1 and "1033" or "com.apple.keylayout.ABC",
    },
  },
}
