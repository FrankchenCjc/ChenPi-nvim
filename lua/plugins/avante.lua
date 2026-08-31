
return {
  {
    "yetone/avante.nvim",
    opts = {
      provider = "moonshot",
      providers = {
        moonshot = {
          __inherited_from = "openai",
          endpoint = "https://api.moonshot.cn/v1",
          model = "kimi-k3",
          timeout = 60000,
          api_key_name = "MOONSHOT_API_KEY",
          extra_request_body = {
            temperature = 1,
            max_tokens = 32768,
            reasoning_effort = "high",
          },
        },
      },
    },
  },
}
