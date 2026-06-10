vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
---vim.keymap.set("n", "-", "<cmd>Oil<cr>", { desc = "Open parent directory" })
---vim.keymap.set("n", "-", "<cmd>Oil --float<cr>")
vim.keymap.set("n", "-", function()
  require("oil").open(vim.fn.expand("%:p:h"))
end, { desc = "Open parent directory" })

