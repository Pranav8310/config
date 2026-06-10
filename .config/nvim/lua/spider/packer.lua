-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {
		'stevearc/oil.nvim',
		config = function()
			require('oil').setup({
				-- You can add any oil.nvim options here.
				-- For example, to set a keymap:
				vim.keymap.set("n", "-", "<cmd>Oil<cr>", { desc = "Open parent directory" })
			})
		end,
		requires = {
			{ 'nvim-mini/mini.icons' } -- Specify mini.icons as a dependency
		}
	}
end)
