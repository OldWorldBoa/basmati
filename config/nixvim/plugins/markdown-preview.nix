{...}:{
  programs.nixvim = {
    keymaps = [
      {
        action="<cmd>MarkdownPreviewToggle<CR>";
        key="<leader>mp";
        mode="n";
      }
    ];

    plugins = {
      markdown-preview = {
        enable = true;
        settings = {
          browser = "librewolf";
        };
      };
    };
  };
}
