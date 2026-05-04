{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./hypr
    ./nixvim
    ./stylix
    ./background
    ./kitty.nix
    ./git.nix
    ./librewolf.nix
  ];
}
