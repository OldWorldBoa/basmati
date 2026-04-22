{ config, lib, pkgs, ... }:
with config.lib.stylix;
let
  toRGB = colour: ''0xFF${colour}'';
  toARGB = alpha: colour: ''0x${alpha}${colour}'';
in
{

  wayland.windowManager.hyprland = {
    settings = {
      general = {
        gaps_in = 5;
        gaps_out = 20;
        border_size = 2;
	"col.inactive_border" = toRGB colors.base01;
	"col.active_border" = toRGB colors.base0D; 

        resize_on_border = false;
        allow_tearing = false;
        layout = "dwindle";
      };

      misc = {
	background_color = toRGB colors.base00;
	font_family = "Terminess Nerd Font";
      };

      decoration = {
        rounding = 15;
	rounding_power = 1.0;

	shadow = {
	  enabled = true;
	  color = toRGB colors.base03;
	  range = 10;
	  render_power = 3;
	  offset = "1 1";
	};

	blur = {
	  enabled = true;
	  size = 4;
	  passes = 1;
	  vibrancy = 0.19;
	};
      };

      group = {
	"col.border_active" = toRGB colors.base0D; 
	"col.border_inactive" = toRGB colors.base01;
	groupbar = {
          text_color = toRGB colors.base07;
          text_color_inactive = toRGB colors.base04;
	  "col.inactive" = toRGB colors.base01;
	  "col.active" = toRGB colors.base0D; 
	};
      };

      animations = {
        enabled = "yes, please :)";

	bezier = [ 
	  "easeOutQuint,0.23,1,0.32,1"
	  "easeInOutCubic,0.65,0.05,0.36,1"
	  "linear,0,0,1,1"
	  "almostLinear,0.5,0.5,0.75,1.0"
	  "quick,0.15,0,0.1,1"
        ];

	animation = [
	  "global,1,10,default"
	  "border,1,5.39,easeOutQuint"
	  "windows,1,4.79,easeOutQuint"
	  "windowsIn,1,4.1,easeOutQuint,popin 87%"
	  "windowsOut,1,1.49,linear,popin 87%"
	  "fadeIn,1,1.73,almostLinear"
	  "fadeOut,1,1.46,almostLinear"
	  "fade,1,3.03,quick"
	  "layers,1,3.81,easeOutQuint"
	  "layersIn,1,4,easeOutQuint,fade"
	  "layersOut,1,1.5,linear,fade"
	  "fadeLayersIn,1,1.79,almostLinear"
	  "fadeLayersOut,1,1.39,almostLinear"
	  "workspaces,1,1.94,almostLinear,fade"
	  "workspacesIn,1,1.21,almostLinear,fade"
	  "workspacesOut,1,1.94,almostLinear,fade"
	];
      };
    };
  };
}
