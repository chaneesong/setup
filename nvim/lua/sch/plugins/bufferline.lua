local status, bufferline = pcall(require, "bufferline")
if not status then
  return
end

bufferline.setup({
  options = {
    mode = "buffers",
    close_command = "bdelete! %d",
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
  },
})

vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})
vim.keymap.set("n", "<leader><Tab>", "<Cmd>BufferLinePickClose<CR>", {})
