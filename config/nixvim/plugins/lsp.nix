{lib, ...}: {
  programs.nixvim = {
    plugins = {
      lspconfig.enable = true;
    };

    lsp = {
      keymaps = [
      {
        key = "grn";
        lspBufAction = "rename";
      }
      {
        key = "gra";
        lspBufAction = "code_action";
      }
      {
        action.__raw = "require('telescope.builtin').lsp_references";
        key = "grr";
      }
      {
        action.__raw = "require('telescope.builtin').lsp_implementations";
        key = "gri";
      }
      {
        key = "grI";
        lspBufAction = "implementation";
      }
      {
        action.__raw = "require('telescope.builtin').lsp_definitions";
        key = "grd";
      }
      {
        key = "grD";
        lspBufAction = "definition";
      }
      {
        action.__raw = "require('telescope.builtin').lsp_type_definitions";
        key = "grt";
      }
      {
        key = "grT";
        lspBufAction = "type_definition";
      }
      {
        key = "K";
        lspBufAction = "hover";
      }
      {
        action.__raw = "function() vim.diagnostic.jump({ count=-1, float=true }) end";
        key = "<leader>k";
      }
      {
        action.__raw = "function() vim.diagnostic.jump({ count=1, float=true }) end";
        key = "<leader>j";
      }
      {
        action = "<CMD>Lspsaga hover_doc<Enter>";
        key = "K";
      }
      ];

      servers = {
        lua_ls.enable = true;
        elmls.enable = true;
        html.enable = true;
        nixd.enable = true;
        pylsp.enable = true;
        systemd_lsp.enable = true;
      };
    };
  };
}
