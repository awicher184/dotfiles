local colorscheme = "tokyonight-day"

local isSuccess, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not isSuccess then
  print("Colorscheme " .. colorscheme .. " not found!")
  return
end
