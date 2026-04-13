{
  programs.nixvim = {
    colorschemes.catpuccin.enable = true;

    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };

    opts = {
      fileencoding = "utf-8";
    };
  };
}
