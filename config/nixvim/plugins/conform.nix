{lib, pkgs, ...}:{
  programs.nixvim = {
    keymaps = [{
      action.__raw=''
        function()
          require("conform").format({async = true, lsp_format="fallback"})
        end
      '';
      key="<leader>f";
      mode="";
    }];

    plugins = {
      conform-nvim = {
        enable = true;
        autoInstall.enable = true;
        settings = {
          formatters_by_ft = {
            bash = [
              "shellcheck"
              "shellharden"
              "shfmt"
            ];
            cpp = [ "clang_format" ];
            javascript = {
              __unkeyed-1 = "prettierd";
              __unkeyed-2 = "prettier";
              timeout_ms = 2000;
              stop_after_first = true;
            };
            lua = [ "stylua" ];
            python = [ "isort" "black" ];
            rust = [ "rustfmt" ];
            "_" = [
              "squeeze_blanks"
              "trim_whitespace"
              "trim_newlines"
            ];
          };
          log_level = "warn";
          notify_on_error = false;
          notify_no_formatters = false;
          formatters = {
            shellcheck = {
              command = lib.getExe pkgs.shellcheck;
            };
            shfmt = {
              command = lib.getExe pkgs.shfmt;
            };
            shellharden = {
              command = lib.getExe pkgs.shellharden;
            };
            squeeze_blanks = {
              command = lib.getExe' pkgs.coreutils "cat";
            };
          };
        };
      };
    };
  };
}
