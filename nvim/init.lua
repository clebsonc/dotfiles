require("user.settings")                   -- Just default nvim configurations
require("user.keymaps")                    -- Personal Keymaps
require("user.plugins")                    -- Managed Installed Plugins
require("user.pconfigs.lualine")           -- Plugin that enables the status line
require("user.pconfigs.cmp")               -- Plugin that enables the auto completion
require("user.pconfigs.lsp")               -- Plugin that configure that neovim Lso
require("user.pconfigs.telescope")         -- Plugin that enables fuzzy finder
require("user.pconfigs.treesitter")        -- Plugin that enables parses the code for better LSP suport
require("user.pconfigs.autopairs")         -- Auto close brackets
require("user.pconfigs.comment")           -- Auto comment with gcc
require("user.pconfigs.gitsigns")          -- Enables Git signs on the left gutter
require("user.pconfigs.nvim-tree")         -- File explorer
require("user.pconfigs.null-ls")           -- Allows to use external sources for lintes (ge: Flake8, Pylint, Pydocstyle, mypy, etc.)
require("user.pconfigs.bufferline")        -- Show buffers as "tabs"
require("user.pconfigs.neogen")            -- Plugin that enables alto docstring
require("user.pconfigs.indent")            -- Plugin that enables auto indentation
require("user.pconfigs.alpha")             -- Plugin that enables the dashboard
require("user.pconfigs.toggleterm")        -- Plugin that enables the inner terminal styles
require("user.pconfigs.which-key")        -- Plugin that enables the inner terminal styles

vim.cmd[[
    colorscheme tomorrow
]]
