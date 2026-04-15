{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    inputs.nixvim.homeModules.nixvim
    ./config
  ];

  home = {
    username = "oldworldboa";
    homeDirectory = "/home/oldworldboa";
    stateVersion = "25.11";
    packages = [
      pkgs.hyprlauncher
      pkgs.discord
      pkgs.steam
      pkgs.blueman
      pkgs.wl-clipboard-rs
      pkgs.pavucontrol
    ];
  };

  programs = {
    home-manager.enable = true;
  };
}
