{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./config
  ];

  home = {
    username = "oldworldboa";
    homeDirectory = "/home/oldworldboa";
    stateVersion = "25.11";

    packages = with pkgs; [
      hyprtoolkit
      hyprlauncher
      discord
      steam
      wl-clipboard-rs
      gimp
      gotop
      bluetui
      bluez
      pulsemixer
      quickshell
      obsidian
      nightdiamond-cursors
      cargo
      rustc
      gcc
      inputs.awww.packages.${pkgs.stdenv.hostPlatform.system}.awww
    ];

    pointerCursor = with pkgs; {
      gtk.enable = true;
      x11.enable = true;
      package = nightdiamond-cursors;
      name = "NightDiamond-Blue";
      size = 20;
    };
  };

  programs = {
    home-manager.enable = true;
  };
}
