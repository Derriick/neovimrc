-- Highlight todo, notes, etc in comments
return {
    "folke/todo-comments.nvim",
    event = "VimEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
        signs = false,
    },
    config = function(_, opts)
        require("todo-comments").setup(opts)

        -- Enable todo keywords highlight for markdown and other text files
        vim.api.nvim_create_autocmd("BufEnter", {
            desc = "Enable todo-comments for text",
            group = vim.api.nvim_create_augroup("user.todo.text", { clear = true }),
            callback = function(ev)
                local config = require("todo-comments.config")
                local comments_only = string.match(ev.file, "%.md$") == nil
                    and string.match(ev.file, "%.txt$") == nil
                    and string.match(ev.file, "%.adoc$") == nil
                    and string.match(ev.file, "%.asciidoc$") == nil
                config.options.highlight.comments_only = comments_only
            end,
        })
    end,
    keys = {
        {
            "]t",
            function()
                require("todo-comments").jump_next()
            end,
            desc = "Next todo comment",
        },
        {
            "[t",
            function()
                require("todo-comments").jump_prev()
            end,
            desc = "Previous todo comment",
        },
    },
}
