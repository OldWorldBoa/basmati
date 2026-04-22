{...}: {
  home.file.".config/qs/" = {
    source = ./src;
    recursive = true;
  };
}
