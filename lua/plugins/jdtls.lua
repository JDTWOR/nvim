return {
  {
    "neovim/nvim-lspconfig",
    dependencies = { "mfussenegger/nvim-jdtls" },
    opts = {
      setup = {
        jdtls = function(_, _)
          vim.api.nvim_create_autocmd("FileType", {
            pattern = "java",
            callback = function()
              -- Importar jdtls localmente
              local jdtls = require("jdtls")

              -- Función on_attach local
              local on_attach = function(client, buffer)
                -- Keymaps tipo IntelliJ
                vim.keymap.set(
                  "n",
                  "<leader>di",
                  "<Cmd>lua require'jdtls'.organize_imports()<CR>",
                  { buffer = buffer, desc = "Organizar Importaciones" }
                )
                vim.keymap.set(
                  "n",
                  "<leader>dt",
                  "<Cmd>lua require'jdtls'.test_class()<CR>",
                  { buffer = buffer, desc = "Test Clase" }
                )
                vim.keymap.set(
                  "n",
                  "<leader>dn",
                  "<Cmd>lua require'jdtls'.test_nearest_method()<CR>",
                  { buffer = buffer, desc = "Test Método Cercano" }
                )
                vim.keymap.set(
                  "v",
                  "<leader>de",
                  "<Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>",
                  { buffer = buffer, desc = "Extraer Variable" }
                )
                vim.keymap.set(
                  "n",
                  "<leader>de",
                  "<Cmd>lua require('jdtls').extract_variable()<CR>",
                  { buffer = buffer, desc = "Extraer Variable" }
                )
                vim.keymap.set(
                  "v",
                  "<leader>dm",
                  "<Esc><Cmd>lua require('jdtls').extract_method(true)<CR>",
                  { buffer = buffer, desc = "Extraer Método" }
                )
                vim.keymap.set(
                  "n",
                  "<leader>cf",
                  "<cmd>lua vim.lsp.buf.format({ async = true })<CR>",
                  { buffer = buffer, desc = "Formatear" }
                )
              end

              -- Ejecutar on_attach para el buffer actual
              on_attach(nil, vim.api.nvim_get_current_buf())

              -- Configuración de JDTLS
              local home = vim.fn.expand("~")
              local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
              local workspace_dir = home .. "/.local/share/jdtls-workspace/" .. project_name
              local lombok = home .. "/.local/share/java/lombok.jar" -- Ajusta según tu ruta

              local root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew" })
              if not root_dir then
                return
              end

              local config = {
                cmd = {
                  "java", -- Java 17+ o 21
                  "-javaagent:" .. lombok,
                  "-Xbootclasspath/a:" .. lombok,
                  "-Declipse.application=org.eclipse.jdt.ls.core.id1",
                  "-Dosgi.bundles.defaultStartLevel=4",
                  "-Declipse.product=org.eclipse.jdt.ls.core.product",
                  "-Dlog.protocol=true",
                  "-Dlog.level=ALL",
                  "-Xms1g",
                  "--add-modules=ALL-SYSTEM",
                  "--add-opens",
                  "java.base/java.util=ALL-UNNAMED",
                  "--add-opens",
                  "java.base/java.lang=ALL-UNNAMED",
                  "-jar",
                  vim.fn.glob(
                    home .. "/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_*.jar"
                  ),
                  "-configuration",
                  home .. "/.local/share/nvim/mason/packages/jdtls/config_linux",
                  "-data",
                  workspace_dir,
                },
                root_dir = root_dir,
                settings = {
                  java = {
                    lombok = { support = true },
                  },
                },
                init_options = {
                  bundles = {},
                  extendedClientCapabilities = jdtls.extendedClientCapabilities,
                },
              }

              -- Iniciar o adjuntar el servidor JDTLS
              jdtls.start_or_attach(config)
            end,
          })
          return true
        end,
      },
    },
  },
}
