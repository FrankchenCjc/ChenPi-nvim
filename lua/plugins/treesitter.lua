return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        -- 在这里指定编译器（为了解决之前的编译问题）
        init = function()
        end,
        -- 其余配置可以保持 LazyVim 默认，或者自己加 opts
        opts = {
            ensure_installed = { "lua", "rust", "vim", "typescript", "javascript", "css", 'html', 'markdown' }, -- 举例
            auto_install = true,
            highlight = { enable = true },
        },
    },
}
