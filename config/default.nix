{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./hypr
    ./nixvim
    ./equilibrium-light.nix
    #./stylix
    ./kitty.nix
    ./git.nix
    ./librewolf.nix
  ];
}

