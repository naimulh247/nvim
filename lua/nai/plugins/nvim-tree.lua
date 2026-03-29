return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- Disable netrw (built-in file explorer)
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require("nvim-tree").setup({
      sync_root_with_cwd = false,
      respect_buf_cwd = false,
      update_focused_file = {
        enable = true,
        update_root = false,
      },
        view = {
        width = 35,
      },
      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
        },
      },
      actions = {
        open_file = {
          quit_on_open = false,
        },
        change_dir = {
        enable = true,
        global = false    
    },
      },
      filters = {
        dotfiles = false,
      },
    })

    print("nvim-tree loaded!")
  end,
}
