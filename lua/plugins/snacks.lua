-- 🐱 会眨眼的猫猫开屏（Windows/Mac/Linux 通吃，不依赖 bash）
local frames = {
  { "  /\\_/\\  ", " ( o.o ) ", "  > ^ <  " },   -- 睁眼
  { "  /\\_/\\  ", " ( -.- ) ", "  > ^ <  " },   -- 半闭
  { "  /\\_/\\  ", " ( v.v ) ", "  > ^ <  " },   -- 眯眼
}

-- 动画：不碰 snacks 的配置链，独立 autocmd
vim.api.nvim_create_autocmd("VimEnter", {
  once = true,
  callback = function()
    local timer = vim.uv.new_timer()
    local frame = 0
    timer:start(500, 500, vim.schedule_wrap(function()
      local buf = vim.api.nvim_get_current_buf()
      if vim.bo[buf].filetype ~= "snacks_dashboard" then
        return -- 不在开屏上就不动，省资源
      end
      frame = frame % #frames + 1
      pcall(vim.api.nvim_buf_set_lines, buf, 0, 3, false, frames[frame])
    end))
  end,
})

return {
  {
    "snacks.nvim",
    opts = {
      dashboard = {
        header = frames[1],
        sections = {
          { section = "header", padding = 0, gap = 1 },
          { section = "keys", gap = 1, padding = 1 },
          { section = "startup" },
        },
      },
    },
  },
}
