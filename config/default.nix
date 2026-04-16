{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./hypr
    ./nixvim
    ./stylix
    ./kitty.nix
    ./git.nix
    ./librewolf.nix
  ];
}

