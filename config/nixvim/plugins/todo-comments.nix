{...}:{

  programs.nixvim = {
    keymaps = [
      {
        key = "<leader>tj";
        mode = "n";
        action.__raw = ''
          function()
	    require("todo-comments").jump_next()
	  end
        '';
      }
      {
        key = "<leader>tk";
        mode = "n";
        action.__raw = ''
          function()
	    require("todo-comments").jump_prev()
	  end
        '';
      }
      {
        key = "<leader>ta";
	mode = "n";
	action = "<cmd>TodoTelescope<CR>";
      }
    ];

    plugins = {
      todo-comments.enable = true;
    };
  };
}
