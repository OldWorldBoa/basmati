{
  programs.nixvim = {
    colorschemes.cyberdream = {
      enable = true;
      settings =  {
        variang = "light";
	transparent = true;
      };
    };

    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };

    opts = {
      number = true;
      fileencoding = "utf-8";
      shiftwidth = 2;
      clipboard = [ "unnamedplus" ];
    };
  };
}
