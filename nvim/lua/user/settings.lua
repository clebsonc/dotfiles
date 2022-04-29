-- ------------------------------------------------------------------------------------------
-- General settings
-- -------------------------------------------------------------------------------------------

local options = {
    nu = true,                                   -- show line numbers
    relativenumber = true,                       -- show relative numbers
    wrap = false,                                -- Give more space for displaying messages.
    completeopt = { "menuone", "noselect" },
    cmdheight = 2,
    tabstop = 4,                                 -- number of visual spaces per TAB
    softtabstop = 4,                             -- number of spaces in tab when editing
    shiftwidth = 4,                              -- number of spaces to use for autoindent
    expandtab  = true,                           -- expand tab to spaces so that tabs are spaces
    autoindent = true,
    smartindent = true,
    clipboard = "unnamedplus",                   -- install xclip: pacman install -Syu xclip for the clipboard copy work
    mouse = 'a',
    ignorecase = true,                           -- Ignore case in general
    smartcase = true,                            -- but become case-sensitive when uppercase is present
    linebreak = true,
    showbreak = '↪',                             -- Character to show before the lines that have been soft-wrapped
    signcolumn = 'yes:3',                     -- show sidecolumn for errors and warnings
    pumblend=10,                                 -- transparent popup disabled. To enable change number to the maximum of 100.
    pumheight = 10,
    winblend=10,                                 -- pseudo transparency for floating window
    spell = false,
    spelllang = 'en_us',                         -- Spell languages
    title = true,
    tildeop = true,                              -- Tilde (~) is an operator, thus must be followed by motions like `e` or `w`.
    joinspaces = false,                          -- join lines with see SHIFT+J: https://stackoverflow.com/q/4760428/6064933
    wildmode = "longest:full,full",              -- Display all matching files when we tab complete
    splitright = true,
    splitbelow = true,
    updatetime = 250,                            -- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable delays and poor user experience.
    timeoutlen = 1000,                           -- time to wait for a mapped sequence to complete (in milliseconds)
    redrawtime = 10000,                          -- Allow more time to load syntax for large files.
    backup = false,
    writebackup = false,                         -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
    undofile = false,                            -- if enabled allow to perform undo operations after rebooting or closing the file.
    list = true,
    -- listchars =, {eol = '↲', tab = '▸ ', trail = '·'}
    listchars = {tab = '▸ ', trail = '·'},
    cursorline = true,
    -- colorcolumn = '100',                         -- highlight column
    termguicolors = true,                        -- allow more colors in the terminal
    scrolloff = 8,
    sidescrolloff = 8,
    confirm = true,
    inccommand= 'split',
    showmode = false,
    showtabline = 2,                             -- always show tabs
}

for key, value in pairs(options) do
    vim.opt[key] = value
end

-- vim.o.fillchars = 'eob: '



