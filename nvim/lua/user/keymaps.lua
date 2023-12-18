local opts = { noremap = true, silent = true }


-- short function name for mapping
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


-- Keymap can be applied to the following modes:
-- n = normal_mode
-- i = insert_mode
-- v = visual_mode
-- x = visual_block_mode
-- t = term_mode
-- c = command_mode


-- Normal
-- Faster navigation between split windows.
-- keymap('n', '<C-h>', '<C-W>h', opts)
-- keymap('n', '<C-j>', '<C-W>j', opts)
-- keymap('n', '<C-k>', '<C-W>k', opts)
-- keymap('n', '<C-l>', '<C-W>l', opts)

-- Resize with arrows
vim.keymap.set('n', '<C-Up>', ':resize +2<CR>')
vim.keymap.set('n', '<C-Down>', ':resize -2<CR>')
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>')
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>')

-- Navigate between buffers
keymap("n", "<S-l>", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<S-h>", ":BufferLineCyclePrev<CR>", opts)
keymap("n", "<C-l>", ":BufferLineMoveNext<CR>", opts)
keymap("n", "<C-h>", ":BufferLineMovePrev<CR>", opts)


-- When text is wrapped, move by terminal rows, not lines, unless a count is provided
keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true })
keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true })

keymap('n', '<leader>k', ':nohlsearch<CR>', opts)          -- Enable / disable search highlight
-- keymap('n', '<leader>e', ':Lex 10<CR>', opts)              -- Open the NETRW explorer
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)      -- Nvimtree
keymap('n', 'gf', ':edit <cfile><CR>', opts)               -- Go to file even if it doesn`t exist


-- Visual
-- Reselect visual selection after indenting
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)


-- Visual block mode
-- reselect after indenting
keymap('x', '<', '<gv', opts)
keymap('x', '>', '>gv', opts)

-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- Move text up and down
vim.keymap.set('v', '<A-j>', ':move .+1<CR>==')
vim.keymap.set('v', '<A-k>', ':move .-2<CR>==')


-- Telescope keybinds
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>fw", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", opts)


-- This keymap show all diagnostics in telescope with theme ivy.
-- To send the diagnostics to quickfix list press CTRL + Q
keymap("n", "<leader>fd", "<cmd>lua require'telescope.builtin'.diagnostics(require('telescope.themes').get_ivy({ previewer = false, winblend = 10 }))<cr>", opts)  -- option without the previewer with different theme
-- keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)  -- option without the previewer


-- Auto formatting
keymap("n", "<leader>f", ":Format<cr>", opts)


-- Generate docstring with neogen
keymap("n", "<leader>nf", ":Neogen func<CR>", opts)
keymap("n", "<leader>nc", ":Neogen class<CR>", opts)
keymap("n", "<leader>nm", ":Neogen file<CR>", opts)


-- Show dashboard
keymap("n", "<leader>dd", ":Alpha<CR>", opts)


-- Inner terminal keymaps with toogle term.
keymap("n", "<leader>tl", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)
keymap("n", "<leader>tn", "<cmd>lua _NCDU_TOGGLE()<CR>", opts)
keymap("n", "<leader>th", "<cmd>lua _HTOP_TOGGLE()<CR>", opts)
keymap("n", "<leader>tp", "<cmd>lua _PYTHON_TOGGLE()<CR>", opts)
