local keymap = vim.keymap

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
-- Open a new tab and then choose which file you want to open in it
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })
-- Choose which file to open first
-- keymap.set('n', 'te', ':tabedit')

-- Travel between tabs
-- keymap.set('n', '<Tab>', ':tabnext<Return>')
-- keymap.set('n', '<S-Tab>', ':tabprev<Return>')

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 's<left>', '<C-w>h')
keymap.set('', 's<up>', '<C-w>k')
keymap.set('', 's<down>', '<C-w>j')
keymap.set('', 's<right>', '<C-w>l')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Exit insert mode using jk
keymap.set('i', 'jk', '<esc>')

-- Change the emmet leader key from <C-y> to ','
-- vim.cmd [[let g:user_emmet_leader_key=',']]

-- Open vimrc
keymap.set('n', '<leader>e', ':vsplit $MYVIMRC<Return>')
keymap.set('n', '<leader>s', ':source $MYVIMRC<Return>')
