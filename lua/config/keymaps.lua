-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>je", "<cmd>SyntaxpressoCreateJpaEntity<CR>", { desc = "Create JPA Entity" })
vim.keymap.set("n", "<leader>jf", "<cmd>SyntaxpressoCreateEntityField<CR>", { desc = "Create JPA Field" })
vim.keymap.set("n", "<leader>jr", "<cmd>SyntaxpressoCreateEntityRelationship<CR>", { desc = "Create Relationship" })
vim.keymap.set("n", "<leader>jR", "<cmd>SyntaxpressoCreateJpaRepository<CR>", { desc = "Create Repository" })
