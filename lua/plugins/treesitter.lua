return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    -- 其余配置保持 LazyVim 默认，自己加 opts
    opts = {
      ensure_installed = { "lua", "rust", "vim", "typescript", "javascript", "css", "html", "markdown" },
      -- auto_install 是 master 分支的旧键，main 分支已不存在（LazyVim 走 ensure_installed 安装），已删
      highlight = { enable = true },
    },
  },
}
