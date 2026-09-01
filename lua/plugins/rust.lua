return {
  "mrcjkb/rustaceanvim",
  opts = function()
    if vim.fn.has("win32") == 1 then
      return {
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
              inlayHints = {
                typeHints = { enable = false },
                parameterHints = { enable = false },
                chainingHints = { enable = false },
              },
            },
          },
        },
      }
    else
      return {
        server = {
          default_settings = {
            ["rust-analyzer"] = {
              cargo = { allFeatures = true },
              check = { command = "clippy" },
              inlayHints = {
                typeHints = { enable = false },
                parameterHints = { enable = false },
                chainingHints = { enable = false },
              },
            },
          },
        },
      }
    end
  end,
}
