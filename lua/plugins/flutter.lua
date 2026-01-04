return {
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim",
    },
    config = function()
      require("flutter-tools").setup({
        flutter_path = vim.fn.expand("~/sdk/flutter/bin/flutter"),
        ui = {
          border = "rounded",
          notification_style = "plugin",
        },
        lsp = {
          color = {
            enabled = true,
          },
          settings = {
            showTodos = true,
            completeFunctionCalls = true,
          },
        },
        debugger = {
          enabled = true,
          run_via_dap = true,
        },
      })
    end,
  },
}
