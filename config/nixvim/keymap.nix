{
  programs.nixvim.keymaps = [
    {
      action = "<cmd>echo 'Use h to move!!'<CR>";
      key = "<left>";
      mode = "n";
    }
    {
      action = "<cmd>echo 'Use l to move!!'<CR>";
      key = "<right>";
      mode = "n";
    }
    {
      action="<cmd>nohlsearch<CR>";
      key="<Esc>";
      mode="n";
    }
    {
      action="vim.diagnostic.setloclist";
      key="<leader>q";
      mode="n";
    }
    {
      action="<C-\\><C-n>";
      key="<Esc><Esc>";
      mode="t";
    }
		{
			action="<cmd>require(\"conform\").format({async = true, lsp_format=\"fallback\"})";
			key="<leader>f";
			mode="";
		}
  ];
}
