vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set('n', '<M-f>', '<C-o>w', { noremap = true, silent = true })

-- Move current line up (Alt-k)
vim.keymap.set('n', '<A-k>', ':move .-2<CR>', { noremap = true, silent = true })

-- Move current line down (Alt-j)
vim.keymap.set('n', '<A-j>', ':move .+1<CR>', { noremap = true, silent = true })

-- Move selected lines up (Alt-k in Visual mode)
vim.keymap.set('v', '<A-k>', ":move '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Move selected lines down (Alt-j in Visual mode)
vim.keymap.set('v', '<A-j>', ":move '>+1<CR>gv=gv", { noremap = true, silent = true })

vim.keymap.set('n', '<leader>f', 'mzgg=G`z', { noremap = true, silent = true })

-- paste from clipboard
vim.keymap.set('v', '<leader>y', '"+y', { noremap = true, silent = true })

-- copy to clipboard
vim.keymap.set('v', '<leader>p', '"+p', { noremap = true, silent = true })

-- Set the visual width of a physical tab character
vim.opt.tabstop = 2 

-- Set the number of spaces inserted for each indentation level
vim.opt.shiftwidth = 4 

-- Convert tabs to spaces (set to false if you want physical tab characters)
vim.opt.expandtab = true

-- Make 'd' and 'D' delete instead of cut (in normal and visual modes)
vim.keymap.set({'n', 'v'}, 'd', '"_d', { noremap = true })
vim.keymap.set({'n', 'v'}, 'D', '"_D', { noremap = true })

-- Make 'p' paste over a visual selection without replacing your clipboard
vim.keymap.set('x', 'p', '"_dP', { noremap = true })
