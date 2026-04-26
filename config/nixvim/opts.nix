{
  programs.nixvim = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
      have_nerd_font = true;
    };

    opts = {
      number = true;
      fileencoding = "utf-8";
      shiftwidth = 2;
      clipboard = [ "unnamedplus" ];
      showmode = false;
      breakindent = true;
      undofile = true;
      ignorecase = true;
      smartcase = true;
      signcolumn = "yes";
      updatetime = 250;
      timeoutlen = 300;
      splitright = true;
      splitbelow = true;
      list = true;
      inccommand = "split";
      cursorline = true;
      scrolloff = 10;
      confirm = true;
    };
  };
}
