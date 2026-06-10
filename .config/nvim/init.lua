require("spider")

--local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
--if not vim.loop.fs_stat(lazypath) then
--  vim.fn.system({
--    "git", "clone", "--filter=blob:none",
--    "https://github.com/folke/lazy.nvim.git",
--    "--branch=stable",
--    lazypath,
--  })
--end
--vim.opt.rtp:prepend(lazypath)
--require("lazy").setup({
--  {
--    'neovim/nvim-lspconfig',
--    config = function()
--      require('lspconfig').pyright.setup{}
--    end
--  }
--})
--vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
--vim.keymap.set('n', 'K', vim.lsp.buf.hover)
--vim.keymap.set('n', 'gr', vim.lsp.buf.references)
--vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)
--vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)

