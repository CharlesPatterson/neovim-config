return {
    "tpope/vim-rhubarb",
    config = function()
        vim.keymap.set("n", "<leader>go", "<Cmd>.GBrowse<CR>")
    end
}
