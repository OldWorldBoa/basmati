{ config, lib, pkgs, ... }:
{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "oldworldboa";
        email = "oldworldboa@gmail.com";
      };

      push = { autoSetupRemote = true; };
      init.defaultBranch = "trunk";
    };
  };
}
