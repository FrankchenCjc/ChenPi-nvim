-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
if vim.g.neovide then
  if vim.fn.has("win32") == 1 then
    vim.o.guifont = "Iosevka_Nerd_Font,Noto_Sans_CJK_SC,Noto_Color_Emoji:h12"
    vim.env.PATH = vim.env.PATH .. ";" .. vim.fn.expand("$LOCALAPPDATA") .. "\\Microsoft\\WinGet\\Links"
  elseif vim.fn.has("macunix") == 1 then
    vim.o.guifont = "Iosevka_Nerd_Font,Noto_Sans_Mono_SC,Noto_Color_Emoji:h16"
  end
  vim.g.neovide_window_blurred = true
  vim.g.neovide_floating_blur_amount_x = 2.0
  vim.g.neovide_floating_blur_amount_y = 2.0
  vim.g.neovide_scale_factor = 1.0
  vim.g.neovide_cursor_short_animation_length = 1.0
  vim.g.neovide_cursor_trail_size = 0.0
  vim.g.neovide_opacity = 0.85
  vim.g.neovide_normal_opacity = 0.85
end
