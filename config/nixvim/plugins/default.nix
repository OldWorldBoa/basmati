{
  imports = [
    ./autopairs.nix
    ./nnn.nix
  ];

  programs.nixvim.plugins = {
    web-devicons.enable = true;
  };
}
