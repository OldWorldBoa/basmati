{config, lib, ...} :
{
  programs.kitty = lib.mkForce {
    enable = true;
    settings = {
      background_opacity = 0.9;
      font_family = "terminess-ttf";
   };
  };
}
