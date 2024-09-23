-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit Terminal Mode' })
-- vim.keymap.set('n', '<Esc>', '<cmd>noh<CR>', { desc = 'Remove Highlights' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set({ 'n', 'v', 'i', 't' }, '<f12>', '<cmd>ToggleTerm direction=float<CR>', { desc = 'Toggle Terminal' })
-- vim.keymap.set('n', '{', '<C-d>zz')
-- vim.keymap.set('n', '}', '<C-u>zz')

vim.keymap.set('n', '{', '10jzz')
vim.keymap.set('n', '}', '10kzz')

vim.keymap.set('n', '<SPACE><TAB>', '<C-^>')
-- vim.keymap.set('n', '<SPACE>^', '<cmd>bprevious<CR>')

-- vim.keymap.set('n', '<C-o>', 'o<Esc>k', { desc = 'Insert Line Below' })
-- vim.keymap.set('n', '<C-O>', 'O<Esc>j', { desc = 'Insert Line Above' })

vim.keymap.set({ 'n', 'v' }, '<A-j>', 'ddp', { desc = 'Move Line Down' })
vim.keymap.set({ 'n', 'v' }, '<A-k>', 'ddkP', { desc = 'Move Line Up' })

-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<A-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<A-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- vim.keymap.set('n', '<A-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- vim.keymap.set('n', '<A-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set({ 'i', 'n' }, '<esc>', '<cmd>noh<CR><esc>', { desc = 'Escape and Clear hlsearch' })
