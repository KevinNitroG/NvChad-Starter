return {
  "mistricky/codesnap.nvim",
  enabled = false and not vim.g.is_windows,
  build = "make",
  -- build = "make build_generator",
  version = "^1",
  opts = {
    mac_window_bar = true,
    title = "",
    code_font_family = "JetbrainsMono Nerd Font Mono",
    watermark_font_family = "JetbrainsMono Nerd Font Mono",
    watermark = "",
    bg_theme = "summer",
  },
}
