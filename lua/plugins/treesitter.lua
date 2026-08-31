return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        -- 其余配置保持 LazyVim 默认，自己加 opts
        opts = {
            ensure_installed = { "lua", "rust", "vim", "typescript", "javascript", "css", 'html', 'markdown' }, -- 举例
            auto_install = true,
            highlight = { enable = true },
        },
    },
}
