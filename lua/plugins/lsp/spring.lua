return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}

      opts.servers.spring_boot_language_server = {
        cmd = {
          "java",
          "-jar",
          vim.fn.expand("~/.local/share/spring-lsp/spring-boot-language-server.jar"),
        },
        filetypes = { "properties", "jproperties", "yaml" },
      }
    end,
  },
}
