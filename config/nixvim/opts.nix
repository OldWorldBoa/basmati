{
  programs.nixvim = {
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
