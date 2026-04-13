{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./git.nix
    ./hypr/hyprland.nix
    inputs.hyprland.homeManagerModules.default
    inputs.nixvim.homeModules.nixvim
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
    kitty.enable = true;
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

    nixvim = {
      enable = true;
      imports = [ ./nixvim/nixvim.nix ];
    };
  };
}
