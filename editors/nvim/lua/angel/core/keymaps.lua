vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- AI Assistant
keymap.set({ "n", "v" }, "<leader>ge", ":Gen<CR>", { desc = "Open AI Assistant Menu" })
keymap.set({ "n", "v" }, "<leader>gp", ":ChatGPT<CR>", { desc = "Open AI Assistant Menu" })
--
-- Save: Ctrl+S
keymap.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
keymap.set("i", "<C-s>", "<Esc>:w<CR>a", { noremap = true, silent = true })
keymap.set("v", "<C-s>", "<Esc>:w<CR>gv", { noremap = true, silent = true })

-- Quit: Crtl+Q
keymap.set("n", "<C-q>", ":qa<CR>", { noremap = true, silent = true })

-- ============================================================================
-- WINDOW NAVIGATION
-- ============================================================================

-- Move between window splits using <leader> + HJKL
keymap.set("n", "<leader>h", "<C-w>h", { noremap = true, desc = "Move to left split" })
keymap.set("n", "<leader>j", "<C-w>j", { noremap = true, desc = "Move to bottom split" })
keymap.set("n", "<leader>k", "<C-w>k", { noremap = true, desc = "Move to top split" })
keymap.set("n", "<leader>l", "<C-w>l", { noremap = true, desc = "Move to right split" })

-- NoteTaker
