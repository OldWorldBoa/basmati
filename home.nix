{ config, lib, pkgs, ... }:

{
  imports = [
    ./git.nix
    ./hypr/hyprland.nix
  ];

  home = {
    username = "oldworldboa";
    homeDirectory = "/home/oldworldboa";
    stateVersion = "25.11";
    packages = [
      pkgs.hyprlauncher
      pkgs.discord
      pkgs.tmux
    ];
  };

  programs = {
    home-manager.enable = true;
    kitty.enable = true;
    librewolf = {
      enable = true;
      settings = {
        "webgl.disabled" = false;
      };
    };
  };
}
