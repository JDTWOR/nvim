return {
  -- Ayu
  {
    "Shatur/neovim-ayu",
    lazy = true,
    priority = 100,
  },

  -- GitHub theme
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = true,
    priority = 100,
  },
  -- Cyberdream
  {
    "scottmckendry/cyberdream.nvim",
    lazy = true,
    priority = 100,
  },

  -- Eezzy (colorscheme activo)
  {
    "ashish2508/Eezzy.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme Eezzy-dark")
    end,
  },

  -- Otros temas sin activar
  { "tiesen243/vercel.nvim", lazy = true },
  { "Skalyaev/a-nvim-theme", lazy = true },

  {
    "tiagovla/tokyodark.nvim",
    lazy = true,
    opts = {},
  },

  { "yashguptaz/calvera-dark.nvim", lazy = true },

  {
    "dgox16/oldworld.nvim",
    lazy = true,
    priority = 100,
  },

  {
    "2giosangmitom/nightfall.nvim",
    lazy = true,
    opts = {},
  },
}
