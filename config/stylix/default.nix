
{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    inputs.stylix.homeModules.stylix
  ];

  stylix = {
    enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/equilibrium-light.yaml";
    image = ./white-cpu.jpg;

    targets = {
      kitty.enable = true;
      waybar.enable = false;

      hyprland = {
	enable = true;
      };

      librewolf = {
        enable = true;
	colorTheme.enable = true;
        profileNames = [ "oldworldboa" ];
      };
    };

    fonts = {
      serif = {
        package = pkgs.nerd-fonts.terminess-ttf;
	name = "Terminess";
      };
      sansSerif = {
        package = pkgs.nerd-fonts.terminess-ttf;
	name = "Terminess";
      };
      monospace = {
        package = pkgs.nerd-fonts.terminess-ttf;
	name = "Terminess";
      };
    };
  };
}
