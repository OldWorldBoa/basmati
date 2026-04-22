
{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    inputs.stylix.homeModules.stylix
  ];

  stylix = {
    enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/equilibrium-light.yaml";

    targets = {
      hyprland.enable = false;
      waybar.enable = false;

      librewolf = {
	colorTheme.enable = true;
        profileNames = [ "oldworldboa" ];
      };
    };

    fonts = {
      serif = {
        package = pkgs.nerd-fonts.terminess-ttf;
	name = "Terminess Nerd Font";
      };
      sansSerif = {
        package = pkgs.nerd-fonts.terminess-ttf;
	name = "Terminess Nerd Font";
      };
      monospace = {
        package = pkgs.nerd-fonts.terminess-ttf;
	name = "Terminess Nerd Font";
      };
    };
  };
}
