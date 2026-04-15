{pkgs, ...}:

{
  programs.nixvim = {
    extraPlugins = [
      pkgs.vimPlugins.nnn-vim
    ];
  };
}
