
{ config, lib, pkgs, ... }:

{
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";
    "$terminal" = "kitty";
    "$browser" = "librewolf";
    "$launcher" = "hyprlauncher";
    "$file-explorer" = "$terminal nnn";

    exec-once = [
      "$terminal"
      "$browser"
      "blueman-applet"
      "waybar"
      "awww-daemon"
    ];

    bind = [
      "$mod, M, exit,"
      "$mod, C, killactive,"
      # Run programs
      "$mod, Q, exec, $terminal"
      "$mod, B, exec, $browser"
      "$mod, R, exec, $launcher"
      "$mod, E, exec, $file-explorer"
      # Change focus
      "$mod, H, movefocus, l"
      "$mod, J, movefocus, d"
      "$mod, K, movefocus, u"
      "$mod, L, movefocus, r"
      # Change workspaces
      "$mod, 1, workspace, 1"
      "$mod, 2, workspace, 2"
      "$mod, 3, workspace, 3"
      "$mod, 4, workspace, 4"
      "$mod, 5, workspace, 5"
      "$mod, 6, workspace, 6"
      "$mod, 7, workspace, 7"
      "$mod, 8, workspace, 8"
      "$mod, 9, workspace, 9"
      # Move windows
      "$mod SHIFT, 1, movetoworkspace, 1"
      "$mod SHIFT, 2, movetoworkspace, 2"
      "$mod SHIFT, 3, movetoworkspace, 3"
      "$mod SHIFT, 4, movetoworkspace, 4"
      "$mod SHIFT, 5, movetoworkspace, 5"
      "$mod SHIFT, 6, movetoworkspace, 6"
      "$mod SHIFT, 7, movetoworkspace, 7"
      "$mod SHIFT, 8, movetoworkspace, 8"
      "$mod SHIFT, 9, movetoworkspace, 9"
      # Tabbing
      "$mod, T, togglegroup"
      "$mod+ALT, 1, changegroupactive, 1"
      "$mod+ALT, 2, changegroupactive, 2"
      "$mod+ALT, 3, changegroupactive, 3"
      "$mod+ALT, 4, changegroupactive, 4"
      "$mod+ALT, 5, changegroupactive, 5"
      "$mod+ALT, 6, changegroupactive, 6"
      "$mod+ALT, 7, changegroupactive, 7"
      "$mod+ALT, 8, changegroupactive, 8"
      "$mod+ALT, 9, changegroupactive, 9"
    ];

    bindm = [
      "$mod, mouse:272, movewindow"
      "$mod, mouse:273, resizewindow"
    ];

    bindl = [
      ",XF86AudioRaiseValue, exec, wpctl set-volume -1 1 @DEFAULT_AUDIO_SINK@ 5%+"
      ",XF86AudioLowerValue, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
      ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
      ",XF86AudioNext, exec, playerctl next"
      ",XF86AudioPrev, exec, playerctl play-pause"
      ",XF86AudioPlay, exec, playerctl play-pause"
      ",XF86AudioPause, exec, playerctl previous"
    ];
  };
} 
