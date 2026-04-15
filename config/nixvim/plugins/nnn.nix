{pkgs, ...}:

{
  programs.nixvim = {
    extraPlugins = [(pkgs.vimUtils.buildVimPlugin {
      name = "nnn";
      src = pkgs.fetchFromGitHub {
        owner = "luukvbaal";
	repo = "nnn.nvim";
	rev = "efe6902";
	hash = "sha256-KRPYHQnKtkd55VOB3ji8U6Chfv2JklQ862KwCUxHp/k=";
      };
    })];

    extraConfigLua = ''
    require("nnn").setup({
      auto_open = {
        setup = "explorer",
      },
    })
    '';
  };
}
