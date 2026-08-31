return {
  {
    "avante-corp/avante.nvim",
    version = "v0.2.3", -- ⚠️ 锁版本！main 分支的 libs 还没发布（404 根源）
    opts = {
      provider = "moonshot",
      providers = {
        moonshot = {
          __inherited_from = "openai",
          endpoint = "https://api.moonshot.cn/v1/chat/completions",
          model = "kimi-k3",
          timeout = 60000,
          api_key_name = "MOONSHOT_API_KEY",
          extra_request_body = {
            max_tokens = 32768,
            reasoning_effort = "high",
          },
        },
      },
    },
  },
}
