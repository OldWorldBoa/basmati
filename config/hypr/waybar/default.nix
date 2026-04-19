{ ... }: {
  home.file.".config/waybar/border.png".source = ./border.png;

  programs.waybar = {
    enable = true;
    style = ./waybar.css;

    settings.main = {
      spacing = 10;
      modules-left = [ "hyprland/workspaces" ];
      modules-center = [ 
	"clock"
      ];
      modules-right = [ 
        "pulseaudio"
	"custom/spacer"
	"custom/system-monitor"
	"custom/spacer"
	"custom/bluetooth"
      ];

      "custom/system-monitor" = {
        format = "󰇅";
	on-click = "kitty gotop";
	tooltip = false;
      };

      "custom/bluetooth" = {
        format = "󰂳";
	on-click = "kitty bluetui";
	tooltip = false;
      };

      "custom/mixer" = {
        format = "󰋍 ";
	on-click = "kitty pulsemixer";
	tooltip = false;
      };

      "custom/spacer" = {
        format = "<span color='#0073b5'> </span>";
        tooltip = false;
      };

      "hyprland/workspaces" = {
	format = "{icon}";
      };

      pulseaudio = {
	format = "󰋍 ";
	format-icons = {
	  default = [
	    "󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 "
	    "󱡔 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 "
	    "󰝤 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 "
	    "󰝤 󱡔 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 "
	    "󰝤 󰝤 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 "
	    "󰝤 󰝤 󱡔 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 "
	    "󰝤 󰝤 󰝤 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 "
	    "󰝤 󰝤 󰝤 󱡔 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 "
	    "󰝤 󰝤 󰝤 󰝤 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 "
	    "󰝤 󰝤 󰝤 󰝤 󱡔 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 "
	    "󰝤 󰝤 󰝤 󰝤 󰝤 󰝣 󰝣 󰝣 󰝣 󰝣 󰝣 "
	    "󰝤 󰝤 󰝤 󰝤 󰝤 󱡔 󰝣 󰝣 󰝣 󰝣 󰝣 "
	    "󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󰝣 󰝣 󰝣 󰝣 󰝣 "
	    "󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󱡔 󰝣 󰝣 󰝣 󰝣 "
	    "󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󰝣 󰝣 󰝣 󰝣 "
	    "󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󱡔 󰝣 󰝣 󰝣 "
	    "󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󰝣 󰝣 󰝣 "
	    "󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󱡔 󰝣 󰝣 "
	    "󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󰝣 󰝣 "
	    "󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󱡔 󰝣 "
	    "󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󰝣 "
	    "󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󱡔 "
	    "󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 󰝤 "
	  ];
	};
	on-click = "kitty pulsemixer";
	tooltip-format = "<span color='#181c22'>{desc}</span>\n<span color='#181c22'>󰕿 {icon}</span>";
      };

      clock = {
	tooltip-format = "<tt><small>{calendar}</small></tt>";
	format = "{:%R}  ";
	format-alt = "{:%m-%d}  ";
	calendar = {
	  format = {
	    months = "<span color='#2c3138'><big><b>{}</b></big></span>";
	    weekdays = "<span color='#0073b5'><b>{}</b></span>";
	    days = "<span color='#73777f'><b>{}</b></span>";
	    today = "<span color='#bf3e05'><b>{}</b></span>";
	  };
	};
      };

      tray = {
	spacing = 10;
      };
    };
  };
}
