-- lua/plugins/oxlint.lua
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = { oxlint = {} }, -- LazyVim 的 servers 表，加名字就行
    },
  },
}
