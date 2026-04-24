{
  imports = [
    ./autopairs.nix
    ./nnn.nix
		./telescope.nix
		./lsp.nix
		./conform.nix
  ];

  programs.nixvim.plugins = {
    web-devicons.enable = true;
    which-key.enable = true;
		dap.enable = true;
		rustaceanvim.enable = true;
		lazydev.enable = true;
  };
}
