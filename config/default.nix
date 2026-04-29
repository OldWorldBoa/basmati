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
    #TODO: Migrate servers: couchdb, pm2(the byte station), and authentik
  ];
}

