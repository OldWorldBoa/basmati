{...}: {
  home.file.".config/awww_randomize_multi.sh" = {
    source = ./awww_randomize_multi.sh;
    executable = true;
  };

  home.file.".config/backgrounds/" = {
    source = ./res;
    recursive = true;
  };
}
