return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "vault",
        path = "/home/jhon/Documents/Obsidian",
      },
    },
    ui = {
      enable = false,
    },

    notes_subdir = "notes",

    daily_notes = {
      folder = "daily",
      date_format = "%Y-%m-%d",
    },

    -- ⛔ desactivado para evitar error
    completion = {
      nvim_cmp = false,
    },

    mappings = {
      ["gf"] = {
        action = function()
          return require("obsidian").util.gf_passthrough()
        end,
        opts = { noremap = false, expr = true },
      },
    },
  },
}
