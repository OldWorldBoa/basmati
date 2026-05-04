{config, ...}:
with config.lib.stylix;
{
  home.file.".config/qs/" = {
    source = ./src;
    recursive = true;
  };

  home.file.".config/qs/Theme.qml" = {
    force = true;
    text = ''
import QtQuick
import Quickshell
pragma Singleton

Singleton {
    id: root

    // Stylix colours
    property string _base00: "${colors.base00}"
    property string _base01: "${colors.base01}"
    property string _base02: "${colors.base02}"
    property string _base03: "${colors.base03}"
    property string _base04: "${colors.base04}"
    property string _base05: "${colors.base05}"
    property string _base06: "${colors.base06}"
    property string _base07: "${colors.base07}"
    property string _base08: "${colors.base08}"
    property string _base09: "${colors.base09}"
    property string _base0A: "${colors.base0A}"
    property string _base0B: "${colors.base0B}"
    property string _base0C: "${colors.base0C}"
    property string _base0D: "${colors.base0D}"
    property string _base0E: "${colors.base0E}"
    property string _base0F: "${colors.base0F}"
    // Color with #
    property color base00: "#" + _base00
    property color base01: "#" + _base01
    property color base02: "#" + _base02
    property color base03: "#" + _base03
    property color base04: "#" + _base04
    property color base05: "#" + _base05
    property color base06: "#" + _base06
    property color base07: "#" + _base07
    property color base08: "#" + _base08
    property color base09: "#" + _base09
    property color base0A: "#" + _base0A
    property color base0B: "#" + _base0B
    property color base0C: "#" + _base0C
    property color base0D: "#" + _base0D
    property color base0E: "#" + _base0E
    property color base0F: "#" + _base0F
    // Misc.
    property string fontFamily: "Terminess Nerd Font"
    property int fontSize: 20
    property int borderWidth: 3
}
  '';
  };
}
