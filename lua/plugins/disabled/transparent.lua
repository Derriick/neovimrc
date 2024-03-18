return {
    "xiyaowong/transparent.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd([[TransparentEnable]])
    end,
}
