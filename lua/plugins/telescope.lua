return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    'nvim-telescope/telescope-project.nvim',
    dependencies = { "nvim-telescope/telescope.nvim" },
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  },
  {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup {
        manual_mode = true,
        patterns = { ".git", ".project", ".projectile" },
        silent_chdir = true,
      }
    end,
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release'
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-fzf-native.nvim",
    },
    config = function()
      local telescope = require("telescope")

      local function handle_project_selection(project_path)
        vim.cmd("%bd!")

        vim.cmd("cd " .. vim.fn.fnameescape(project_path))

        -- Update tree if nvim-tree is available
        local has_nvim_tree, nvim_tree = pcall(require, "nvim-tree.api")
        if has_nvim_tree then
          nvim_tree.tree.change_root(project_path)
          nvim_tree.tree.reload()
        end
      end

      telescope.setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
          project = {
            base_dirs = {
              '~/.local/', max_depth = 4,
            },
            order_by = "asc",
            search_by = "title",
            on_project_selected = function(prompt_bufnr)
              local selected_entry = require("telescope.actions.state").get_selected_entry(prompt_bufnr)
              local project_path = selected_entry.path
              require("telescope.actions").close(prompt_bufnr)

              handle_project_selection(project_path)
            end,
          },
          projects = {
          },
        },
      })

      require("telescope").load_extension("ui-select")
      require("telescope").load_extension("file_browser")
      require("telescope").load_extension("project")
      require('telescope').load_extension('projects')
      require("telescope").load_extension("fzf")
    end,
  },
}
