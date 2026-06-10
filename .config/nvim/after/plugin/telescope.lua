--local builtin = require('telescope.builtin')
--
--vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
--vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
--vim.keymap.set('n', '<leader>fr', builtin.oldfiles, {})
--vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
--vim.keymap.set('n', '<C-p>', builtin.git_files, {})
--vim.keymap.set('n', '<leader>ps', function()
--  builtin.grep_string({ search = vim.fn.input("Grep > ") })
--end)

-- Setup telescope
require('telescope').setup({
    extensions = {
        ['ui-select'] = {
            require('telescope.themes').get_dropdown(),
        },
    },
})

-- Load extensions
pcall(require('telescope').load_extension, 'ui-select')

-- Setup keymaps
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = '[F]ind [B]uffers' })
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [F]iles' })
vim.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = '[F]ind [R]ecent files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '[F]ind [String] in files' })
vim.keymap.set('n', '<leader>hp', builtin.help_tags, {})
vim.keymap.set('n', 'gd', builtin.lsp_definitions, { desc = "Go to Definition" })
vim.keymap.set('n', 'gr', builtin.lsp_references, { desc = "Go to References" })
vim.keymap.set('n', 'gi', builtin.lsp_implementations, { desc = "Go to Implementation" })
vim.keymap.set('n', 'gt', builtin.lsp_type_definitions, { desc = "Go to Type Definition" })
vim.keymap.set('n', 'fn', function()
  builtin.find_files {
    cwd = vim.fn.stdpath("config")
  }
end, { desc = '[F]ind [F]iles in the nvim confiuration' })
vim.keymap.set(
    'n',
    '<leader>fh',
    ':Telescope find_files hidden=true <CR>',
    { desc = '[F]ind [H]idden files' }
)
vim.keymap.set('n', '<leader>/', function()
    builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        previewer = false,
    })
end, { desc = '[/] Fuzzily search in current buffer' })

-- Setup multigrep
require "spider.multigrep".setup()

