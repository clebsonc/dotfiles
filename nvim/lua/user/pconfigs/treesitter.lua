local configs = require("nvim-treesitter.configs")

configs.setup {
    ensure_installed = {
        "c", "rust", "lua", "python", "dockerfile", "go", "css", "html", "javascript", "latex", "vim", "vimdoc"
    },
    sync_install = false,                    -- Install parsers synchronously (only applied to `ensure_installed`)
    auto_install = true,
    highlight = {
        enable = true,                      -- false will disable the whole extension
        additional_vim_regex_highlighting = false,
    },
    -- indent = { enable = true },          -- this is actually messing up indentation. Do not use it for now. :(
    rainbow = {
        enable = true,
        -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
        -- colors = {}, -- table of hex strings
        -- termcolors = {} -- table of colour name strings
    },
    context_commentstring = {
        enable = true,
        enable_autocmd = false,
    },
}
