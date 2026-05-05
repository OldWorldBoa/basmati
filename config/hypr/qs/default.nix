{config, ...}:
with config.lib.stylix;
{
  home.file.".config/qs/" = {
    source = ./src;
    recursive = true;
  };
}
