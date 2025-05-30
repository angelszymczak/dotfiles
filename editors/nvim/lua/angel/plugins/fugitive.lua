return {
  "tpope/vim-fugitive",
  cmd = { "G", "Git" },
  keys = {
    { "<leader>ga", ":Git fetch --all -p<cr>", desc = "Git fetch" },
    { "<leader>gl", ":Git pull<cr>", desc = "Git pull" },
    { "<leader>gp", ":Git push<cr>", desc = "Git push" },
    { "<leader>gpf", ":Git push --force<cr>", desc = "Git push" },
  },
}
