{...}:{

  programs.nixvim.plugins = {
		telescope = {
		  enable = true;
			extension = {
				fzf-native.enable = true;
				ui-select.enable = true;
			};
			keymaps = {
				"<leader>sh" = { action = "help_tags"; options = { desc = "[S]earch [H]elp"; }; };
			};
		};
	};
}
