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
      inputs.awww.packages.${pkgs.stdenv.hostPlatform.system}.awww
    ];
  };

  programs = {
    home-manager.enable = true;
  };
}
