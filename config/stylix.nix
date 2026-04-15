
{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    inputs.stylix.homeModules.stylix
  ];

  stylix = {
    enable = true;
    targets.kitty.enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/equilibrium-light.yaml";
  };
}
