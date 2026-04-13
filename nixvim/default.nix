{inputs, ...}:

{
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./plugins
  ];

  home.shellAliases.v = "nvim";

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    nixpkgs.useGlobalPackages = true;
    viAlias = true;
    vimAlias = true;
    luaLoader.enable = true;
  };
}
