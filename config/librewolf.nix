{ config, lib, pkgs, ... }:

{
  programs.librewolf = {
      enable = true;
      settings = {
        "webgl.disabled" = false;
      };
      profiles = {
        oldworldboa = {};
      };
  };
}
