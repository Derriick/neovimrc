return {
    {
        "nvimtools/none-ls.nvim",
        opts = function(_, opts)
            local null_ls = require("null-ls")
            opts.sources = vim.list_extend(opts.sources or {}, {
                null_ls.builtins.diagnostics.markdownlint_cli2,
            })
        end,
    },
}
