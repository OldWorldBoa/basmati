{lib, ...} :

{
  programs.kitty = lib.mkForce {
    enable = true;
    settings = {
      dynamic_background_opacity = true;
    };
  };
}
