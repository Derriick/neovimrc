return {
    {
        "sainnhe/sonokai",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            vim.g.sonokai_style = "default"
            vim.g.sonokai_transparent_background = true
            --vim.g.sonokai_better_performance = true

            -- Load the colorscheme here
            vim.cmd.colorscheme("sonokai")

            -- You can configure highlights by doing something like
            -- vim.cmd.hi("Comment gui=none")
        end,
    },
}
