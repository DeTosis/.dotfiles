local builtin = require('telescope.builtin')
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("GREP > ") }) end)

vim.keymap.set("n", "<leader>aln", function()
		if vim.bo.filetype == 'asm' then
			vim.cmd([[%s/;/\=repeat(' ', 29 - virtcol('.')) . ';'/]]) end
		end)
