{...}:{
  programs.nixvim.plugins = {
    mini.enable = true;
    mini-ai.enable = true;
    mini-surround.enable = true;
    mini-statusline = {
      enable = true;
      settings = {
        use_icons = true;
      };
    };
  };
}
