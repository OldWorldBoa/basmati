{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./hypr
    ./nixvim
    ./theme/equilibrium-light.nix
    #./stylix
    ./kitty.nix
    ./git.nix
    ./librewolf.nix
  ];
}

