{
  imports = [
    ./autopairs.nix
  ];

  programs.nixvim.plugins = {
    web-devicons.enable = true;
  };
}
