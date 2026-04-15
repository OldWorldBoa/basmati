{pkgs, ...}:

{
  programs.nixvim = {
    extraPlugins = [
      pkgs.vimPlugins.nnn-vim
    ];

    extraConfigLua = ''
    require("nnn").setup({
      auto_open = {
        setup = "explorer",
      }
    })
    '';
  };
}
