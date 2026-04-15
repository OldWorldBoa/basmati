{inputs, ...}:

{
  imports = [
    ./plugins
    ./opts.nix
    ./keymap.nix
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    luaLoader.enable = true;
  };
}
