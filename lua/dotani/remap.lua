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
