-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--vim.keymap.set("n", "<leader>mmdc", function()
--  local file = vim.fn.expand("%") -- Get the current file name
--  local file_name = vim.fn.expand("%:t") --get file name
--  local cache_dir = vim.fn.stdpath("cache") .. "/marmaid/"
--  vim.cmd("!mkdir -p " .. cache_dir .. " >> /dev/null 2>&1")
--  vim.cmd("!mmdc -i " .. file .. " -o " .. cache_dir .. file_name .. ".png")
--end) -- Make the file executable
--
--vim.keymap.set("n", "<leader>mmdo", function()
--  local file_name = vim.fn.expand("%:t") --get file name
--  local cache_dir = vim.fn.stdpath("cache") .. "/marmaid/"
--  vim.cmd("vs " .. cache_dir .. file_name .. ".png")
--end)
vim.keymap.set("n", "<leader>md", function()
  if vim.bo.filetype == "markdown" then
    local file = vim.fn.expand("%") -- Get the current file name
    --local file_name = vim.fn.expand("%:t:r") --get file name
    vim.cmd("!markdown_viewer " .. file)

    --vim.cmd(
    --  "!MERMAID_FILTER_FORMAT=png MERMAID_FILTER_BACKGROUND=transparent MERMAID_FILTER_SCALE=1 pandoc -f markdown_mmd -t html "
    --    .. file
    --    .. " -F mermaid-filter > /tmp/"
    --    .. file_name
    --    .. ".html"
    --)
    --vim.cmd("!wl-copy  /tmp/" .. file_name .. ".html")
    ----vim.cmd("!firefox /tmp/" .. file_name .. ".html")
    ----vim.cmd("!marker --preview " .. file .. "&")
  else
    print("only markdown(md) file are supported to preview")
  end
end)
