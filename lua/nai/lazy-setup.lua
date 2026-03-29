-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  print("Installing lazy.nvim...")
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
  print("lazy.nvim installed!")
end
vim.opt.rtp:prepend(lazypath)

-- Set leader key before lazy loads
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy with empty plugins for now
require("lazy").setup("nai.plugins", {
  change_detection = {
    notify = false,
  },
})

print("Lazy.nvim loaded!")