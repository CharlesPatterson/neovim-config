return {
    "nvim-telescope/telescope.nvim",

    dependencies = {
        "nvim-telescope/telescope-project.nvim"
    },

    config = function()
        require('telescope').setup({})

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})

        vim.api.nvim_set_keymap('n', '<leader>pp', ":lua require'telescope'.extensions.project.project{}<CR>", {noremap = true, silent = true})
    end
}
