{ ... }: {
  programs.waybar = {
    enable = true;
    style = ./waybar.css;

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

      pulseaudio = {
	format = "{volume}% {icon} {format_source}";
	format-bluetooth = "{volume}% {icon}󰂯 {format_source}";
	format-bluetooth-muted = "󰝟 {icon}󰂯 {format_source}";
	format-muted = "󰝟 {format_source}";
	format-source = "{volume}% ";
	format-source-muted = "";
	format-icons = {
	  headphone = "";
	  hands-free = "󰏳";
	  headset = "󰋎";
	  phone = "";
	  portable = "";
	  car = "";
	  default = ["" "" ""];
	  on-click = "pavucontrol";
	};
      };

      cpu = {
	format = "{}% ";
	tooltip = false;
      };

      memory = {
	format = "{}% ";
      };

      temperature = {
	critical-threshold = 80;
	format = "{temperatureC}C {icon}";
      };

      clock = {
	tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
	format-alt = "{:%Y-%m-%d}";
      };

      tray = {
	spacing = 10;
      };
    };
  };
}
