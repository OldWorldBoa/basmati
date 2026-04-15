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
  ];
}
