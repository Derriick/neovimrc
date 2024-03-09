return {
  {
    'xiyaowong/transparent.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd [[TransparentEnable]]
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
