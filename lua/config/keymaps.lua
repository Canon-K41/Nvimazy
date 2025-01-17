vim.g.mapleader = " "  -- Leaderキーをスペースに設定
-- Map 'jk' to escape in Insert, Visual, and Terminal modes
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'jk', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', 'jk', '<C-\\><C-n>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('t', '<Esc>', 'exit<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Esc>', ':BufferDelete<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', '<C-l>', '<Right>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-h>', '<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-j>', '<Down>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-k>', '<Up>', { noremap = true, silent = true })

vim.keymap.set('n', '<Up>', '<cmd>resize +1<CR>', { silent = true, desc = 'Increase window height' })
vim.keymap.set('n', '<Down>', '<cmd>resize -1<CR>', { silent = true, desc = 'Decrease window height' })
vim.keymap.set('n', '<Left>', '<cmd>vertical resize -1<CR>', { silent = true, desc = 'Decrease window width' })
vim.keymap.set('n', '<Right>', '<cmd>vertical resize +1<CR>', { silent = true, desc = 'Increase window width' })

-- Modify movement behavior for k, K, j, J, H, and L keys in Normal and Visual modes
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'k', 'gk', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'j', 'gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'K', '10gk', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'K', '10gk', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'J', '10gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'J', '10gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'H', '10h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'H', '10h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'L', '10l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'L', '10l', { noremap = true, silent = true })


vim.api.nvim_set_keymap('n', 'n', 'nzz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'N', 'Nzz', { noremap = true, silent = true })

-- Buffer management mappings
vim.api.nvim_set_keymap('n', '<C-j>', ':BufferPrevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':BufferNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>w', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>p', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<CR>', 'j0i<CR><Esc>', { noremap = true, silent = true })

-- Move selected lines up or down in Visual mode
vim.api.nvim_set_keymap('x', '<C-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<C-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Save file with 'space + space' in Normal mode
vim.api.nvim_set_keymap('n', '<space>w', ':w<CR>', { noremap = true, silent = true })

-- Jump to definition or show explani
vim.api.nvim_set_keymap('n', '<space>e', ':lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>d', '<C-]>', { noremap = true, silent = true })

-- Window management mappings
vim.api.nvim_set_keymap('n', '<space><Esc>', ':only<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>v', ':vsplit<CR>', { noremap = true, silent = true })


--registers
vim.api.nvim_set_keymap('n', '1', '"1', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '2', '"2', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '3', '"3', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '4', '"4', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '5', '"5', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '6', '"6', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '7', '"7', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '8', '"8', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '9', '"9', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '0', '"0', { noremap = true, silent = true })
