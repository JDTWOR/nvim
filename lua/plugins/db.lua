return {
  {
    "tpope/vim-dadbod",
    lazy = true,
    cmd = { "DB", "DBUI", "DBUIToggle" },
  },
  {
    "kristijanhusak/vim-dadbod-ui",
    lazy = true,
    cmd = { "DBUI", "DBUIToggle", "DBUIAddConnection" },
    dependencies = { "tpope/vim-dadbod" },
    init = function()
      vim.g.db_ui_save_location = "~/.config/nvim/db_ui"
    end,
  },
  {
    "kristijanhusak/vim-dadbod-completion",
    ft = { "sql", "mysql", "plsql" },
    dependencies = { "tpope/vim-dadbod" },
  },
}
