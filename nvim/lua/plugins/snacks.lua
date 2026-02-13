return {
  "folke/snacks.nvim",
  lazy = false,
  opts = {
    picker = {
      ignored = true,
      hidden = true,
      trash = true,
      sources = {
        explorer = {
          auto_close = true,
          trash = true,
          layout = { layout = { position = "right" } },
        },
      },
    },
  },
}
