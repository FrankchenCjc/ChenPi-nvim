return {
  {
    "folke/snacks.nvim",        -- 目标：已存在的插件（不是新建一个）
    opts = {                    -- "把下面这些合并进它现有的配置"
      image = {
        enabled = true,         -- snacks 内部的 image 模块：开
        doc = {
          inline = true,        -- 文档（markdown/html）里的图片：直接内联渲染
          float = true,         -- 打开图片文件时：弹浮动窗显示
        },
      },
    },
  },
}
