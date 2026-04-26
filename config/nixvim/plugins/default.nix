{
  imports = [
    ./autopairs.nix
    ./blink-cmp.nix
    ./conform.nix
    ./lsp.nix
    ./markdown-preview.nix
    ./mini.nix
    ./nnn.nix
    ./telescope.nix
    ./todo-comments.nix
  ];

  programs.nixvim.plugins = {
    web-devicons.enable = true;
    which-key.enable = true;
    dap.enable = true;
    rustaceanvim.enable = true;
    lazydev.enable = true;
  };
}
