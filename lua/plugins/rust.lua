-- ⚠️ 合并语义：opts 函数「返回整张表」会顶掉 LazyVim 给 rustaceanvim 的默认配置
--    （丢的东西包括 server.on_attach 里的 <leader>cR / <leader>dr 键位、
--      files.exclude(target 等)、procMacro.enable、checkOnSave、diagnostics.enable）
--    正确姿势 = 原地改传进来的 opts（第二个参数），不 return
return {
  "mrcjkb/rustaceanvim",
  opts = function(_, opts)
    opts = opts or {}
    opts.server = opts.server or {}
    local ra = {
      cargo = { allFeatures = true },
      check = { command = "clippy" },
      inlayHints = {
        typeHints = { enable = false },
        parameterHints = { enable = false },
        chainingHints = { enable = false },
      },
    }
    if vim.fn.has("win32") == 1 then
      -- Windows：WSL2 Arch + gnullvm toolchain
      opts.server.cmd_env = vim.tbl_deep_extend("force", opts.server.cmd_env or {}, {
        RUSTUP_TOOLCHAIN = "stable-x86_64-pc-windows-gnullvm",
      })
      ra.cargo.target = "x86_64-pc-windows-gnullvm"
      ra.check.target = "x86_64-pc-windows-gnullvm"
    end
    -- Mac / Linux：用 rustup 默认 toolchain，不指定 target
    opts.server.default_settings = vim.tbl_deep_extend("force", opts.server.default_settings or {}, {
      ["rust-analyzer"] = ra,
    })
  end,
}
