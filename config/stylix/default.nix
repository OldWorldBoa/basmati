
{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    inputs.stylix.homeModules.stylix
  ];

  stylix = {
    enable = true;
    # Light
    # base16Scheme = "${pkgs.base16-schemes}/share/themes/equilibrium-light.yaml";
    # Dark
    base16Scheme = "${pkgs.base16-schemes}/share/themes/equilibrium-gray-dark.yaml";

    targets = {
      hyprland.enable = false;

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
