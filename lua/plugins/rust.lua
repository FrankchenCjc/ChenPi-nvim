return {
  "mrcjkb/rustaceanvim",
  cond = vim.fn.has("win32") == 1,
  opts = {
    server = {
      cmd_env = {
        RUSTUP_TOOLCHAIN = "stable-x86_64-pc-windows-gnullvm",
      },
      default_settings = {
        ["rust-analyzer"] = {
          cargo = {
            allFeatures = true,
            target = "x86_64-pc-windows-gnullvm",
          },
          check = {
            command = "clippy",
            target = "x86_64-pc-windows-gnullvm",
          },
        },
      },
    },
  },
}
