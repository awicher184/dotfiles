require('neo-tree').setup({
  enable_git_status = true,
  filesystem = {
    filtered_items = {
      visible = true,
      show_hidden_count = true,
      hide_dotfiles = false,
      hide_gitignored = false,
      hide_by_name = {
        '.git',
        -- '.DS_Store',
        -- 'thumbs.db',
      },
    }
  },
  window = {
    position = "right",
    width = 60,
  }
})
