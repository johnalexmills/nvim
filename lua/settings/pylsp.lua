return {
  settings = {
    formatCommand = {"black"},
    pylsp = {
      plugins = {
        black = { enabled = true },
        isort = { enabled = true },
      },
    }
  }
}
