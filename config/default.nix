{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./hypr
    ./nixvim
    ./kitty.nix
    ./git.nix
    ./stylix.nix
  ];
}

