{...}: {
  home.file.".config/qs/" = {
    source = ./src;
    recursive = true;
  };

  #TODO: Remake buttons for bluetui, gotop, and pulsemixer
}
