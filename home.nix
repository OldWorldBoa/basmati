{ config, lib, pkgs, inputs, ... }:

{
  imports = [
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
      pkgs.wl-clipboard-rs
      pkgs.gimp
      pkgs.gotop
      pkgs.bluetui
      pkgs.bluez
      pkgs.pulsemixer
    ];
  };

  programs = {
    home-manager.enable = true;
  };
}
