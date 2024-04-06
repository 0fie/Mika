{
  imports = [
    ./keys.nix
    ./sets.nix

    ./plug/completion/cmp.nix
    ./plug/completion/lspkind.nix
    ./plug/completion/luasnip.nix

    ./plug/git/gitsigns.nix
    ./plug/git/lazygit.nix
    ./plug/git/worktree.nix

    ./plug/lsp/conform.nix
    ./plug/lsp/fidget.nix
    ./plug/lsp/hlchunk.nix
    ./plug/lsp/lsp.nix
    ./plug/lsp/lspsaga.nix
    ./plug/lsp/none-ls.nix
    ./plug/lsp/trouble.nix

    ./plug/treesitter/treesitter-context.nix
    ./plug/treesitter/treesitter-textobjects.nix
    ./plug/treesitter/treesitter.nix

    ./plug/ai/wtf.nix
    ./plug/ai/backseat.nix

    ./plug/ui/alpha.nix
    ./plug/ui/bufferline.nix
    ./plug/ui/lualine.nix
    ./plug/ui/noice.nix
    ./plug/ui/neoscroll.nix
    ./plug/ui/nvim-notify.nix
    ./plug/ui/telescope.nix
    ./plug/ui/colorscheme.nix
    ./plug/ui/search.nix

    ./plug/utils/comment.nix
    ./plug/utils/dap.nix
    ./plug/utils/flash.nix
    ./plug/utils/hardtime.nix
    ./plug/utils/harpoon.nix
    ./plug/utils/illuminate.nix
    ./plug/utils/nvim-autopairs.nix
    ./plug/utils/oil.nix
    ./plug/utils/undotree.nix
    ./plug/utils/ufo.nix
    ./plug/utils/whichkey.nix
  ];
}
