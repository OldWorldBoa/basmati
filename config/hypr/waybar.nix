{ ... }:
{
  programs.waybar = {
    enable = true;
    settings.main = {
      spacing = 4;
      modules-left = [ "hyprland/workspaces" ];
      modules-center = [ "hyprland/window" ];
      modules-right = [ 
        "pulseaudio"
	"cpu"
	"memory"
	"temperature"
	"clock"
	"tray"
      ];

      "hyprland/workspaces" = {
        format = "{icon}";
      };

      "hyprland/window" = {
        separate-outputs = true;
      };

      tray.spacing = 10;

      cpu = {
        format = "{}%";
	tooltip = false;
      };
    };
  };
}
