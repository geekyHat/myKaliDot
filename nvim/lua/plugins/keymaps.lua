-- telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fp", ":Telescope git_files<cr>")
vim.keymap.set("n", "<leader>fz", ":Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<cr>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<cr>")
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<cr>")

-- tree
vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<cr>")

-- twilight
vim.keymap.set("n", "<leader>il", ":Twilight<cr>")

-- zen mode
vim.keymap.set("n", "<leader>zm", ":ZenMode<cr>")

-- format code using LSP
-- vim.keymap.set("n", "<leader>pp", vim.lsp.buf.format)

-- markdown preview
vim.keymap.set("n", "<leader>mp", ":MarkdownPreviewToggle<cr>")

-- nvim-comment
vim.keymap.set({"n", "v"}, "<leader>/", ":CommentToggle<cr>")

-- spider
-- vim.keymap.set({ "n", "o", "x" }, "<leader>w", "<cmd>lua require('spider').motion('w')<CR>", { desc = "Spider-w" })
-- vim.keymap.set({ "n", "o", "x" }, "<leader>e", "<cmd>lua require('spider').motion('e')<CR>", { desc = "Spider-e" })
-- vim.keymap.set({ "n", "o", "x" }, "<leader>b", "<cmd>lua require('spider').motion('b')<CR>", { desc = "Spider-b" })

------------------
-- goto-preview --
------------------
--
-- note: lsp config (from lsp.lua)
-- nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
-- nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
-- nmap('gt', vim.lsp.buf.type_definition, 'Type [D]efinition')
-- nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
--
vim.keymap.set('n', '<leader>gd', ":lua require('goto-preview').goto_preview_definition()<CR>")
vim.keymap.set('n', '<leader>gt', ":lua require('goto-preview').goto_preview_type_definition()<CR>")
vim.keymap.set('n', '<leader>gi', ":lua require('goto-preview').goto_preview_implementation()<CR>")
vim.keymap.set('n', '<leader>gp', ":lua require('goto-preview').close_all_win()<CR>")

