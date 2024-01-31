local keymap = vim.keymap.set
local silent = { silent = true }
local saga = { noremap = true, silent = true }

--- Increment/decrement
keymap('n', '+', '<C-a>', silent)
keymap('n', '-', '<C-x>', silent)

--- Delete a word backwards
keymap('n', 'dw', 'vb"_d', silent)

--- Split window
keymap('n', 'ss', ':split<Return><C-w>w', silent)
keymap('n', 'sv', ':vsplit<Return><C-w>w', silent)

--- Move window
keymap('n', '<Space>', '<C-w>w', silent)
keymap('', '<C-h>', '<C-w>h', silent)
keymap('', '<C-k>', '<C-w>k', silent)
keymap('', '<C-j>', '<C-w>j', silent)
keymap('', '<C-l>', '<C-w>l', silent)

--- Resize window
keymap('n', '<C-w><left>', '<C-w><', silent)
keymap('n', '<C-w><right>', '<C-w>>', silent)
keymap('n', '<C-w><up>', '<C-w>+', silent)
keymap('n', '<C-w><down>', '<C-w>-', silent)

--- Tree
keymap('n', ';l', "<cmd> NvimTreeToggle<CR>", silent)

--- Bufferline
keymap('n', '<Tab>', function () require('bufferline').cycle(1) end, silent)
keymap('n', '<S-Tab>', function () require('bufferline').cycle(-1) end, silent)

--- Lsp Saga
keymap('n', 'K', function () require('lspsaga.hover'):render_hover_doc() end, silent)
keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", silent)
keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", silent)
keymap("n", "gp", "<Cmd>Lspsaga peek_definition<CR>", saga)
keymap("n", "gd", "<Cmd>Lspsaga finder<CR>", saga)
keymap("n", "gr", "<Cmd>Lspsaga rename<CR>", saga)

--- Telescope
keymap("n", "\\\\", "<cmd>Telescope buffers<CR>", silent)
keymap("n", ";r", "<cmd>Telescope live_grep<CR>", silent)
keymap("n", ";f", "<cmd>Telescope find_files<CR>", silent)
keymap("n", ";e", "<cmd>Telescope diagnostics<CR>", silent)
