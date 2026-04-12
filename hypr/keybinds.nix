
{ config, lib, pkgs, ... }:

{

  wayland.windowManager.hyprland.settings = {
      ############
      # Keybinds #
      ############

      "$mod" = "SUPER";
      "$terminal" = "kitty tmux";
      "$browser" = "librewolf";
      "$launcher" = "hyprlauncher";
      "$file-explorer" = "$terminal nnn";

      exec-once = [
        "$terminal"
        "$browser"
      ];

      bind = [
        "$mod, M, exit,"
        "$mod, C, killactive,"
        "$mod, Q, exec, $terminal"
        "$mod, B, exec, $browser"
        "$mod, R, exec, $launcher"
        "$mod, E, exec, $file-explorer"
      ];
  };
} 
