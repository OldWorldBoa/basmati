{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./git.nix
    inputs.hyprland.homeManagerModules.default
    ./hypr/hyprland.nix
    ./nixvim
    ./kitty/kitty.nix
  ];

  home = {
    username = "oldworldboa";
    homeDirectory = "/home/oldworldboa";
    stateVersion = "25.11";
    packages = [
      pkgs.hyprlauncher
      pkgs.discord
      pkgs.tmux
      pkgs.steam
      pkgs.blueman
      pkgs.wl-clipboard-rs
    ];
  };

  programs = {
    home-manager.enable = true;
    waybar = {
      enable = true;
      settings.main = {
        
      };
    };

    librewolf = {
      enable = true;
      settings = {
        "webgl.disabled" = false;
      };
    };
  };
}
