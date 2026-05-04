{inputs, ...}:

{
  imports = [
    inputs.nixvim.homeModules.nixvim
    ./plugins
    ./opts.nix
    ./keymap.nix
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    luaLoader.enable = true;

    extraConfigLua = ''
      vim.api.nvim_create_autocmd("TextYankPost", {
        desc = "Highlight Yank",
        group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
        callback = function()
          vim.hl.on_yank()
        end,
      })

      vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
	  require("conform").format({ bufnr = args.buf })
	end,
      });
    '';
  };
}
