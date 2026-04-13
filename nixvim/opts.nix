{
  programs.nixvim = {
    colorschemes.catppuccin.enable = true;

    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };

    opts = {
      number = true;
      fileencoding = "utf-8";
      shiftwidth = 2;
    };
  };
}
