{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./hypr
    ./nixvim
    ./stylix
    ./kitty.nix
    ./git.nix
    ./librewolf.nix
    ./awww.nix
    #TODO: Migrate servers: couchdb, pm2(the byte station), and authentik
  ];
}

