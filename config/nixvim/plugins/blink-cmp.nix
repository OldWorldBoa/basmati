{...}:{
  programs.nixvim.plugins = {
    blink-cmp = {
      enable = true;
      settings = {
        sources.providers = {
          lazydev = {
            name = "LazyDev";
            module = "lazydev.integrations.blink";
            score_offset = 100;
          };
        };
        appearance = {
          nerd_font_variant = "mono";
        };
        signature.enabled = true;
      };
    };
  };
}
