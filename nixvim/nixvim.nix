{ lib, ... }:

{
  programs.nixvim = {
    enable = true;
    
    plugins.nvim-autopairs.enable = true;
  };
}
