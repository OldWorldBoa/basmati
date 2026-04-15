
{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    inputs.stylix.homeModules.stylix
  ];

  stylix = {
    enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/equilibrium-light.yaml";

    targets = {
      kitty.enable = true;

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
