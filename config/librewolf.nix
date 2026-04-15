{...} :

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
  config.stylix.targets.librewolf.profileNames = ["oldworldboa"];
}
