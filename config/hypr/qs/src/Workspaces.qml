import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

// Workspaces
RowLayout {
  Repeater {
    model: 9

    Text {
      property var ws: Hyprland.workspaces.values.find(w => w.id == index + 1)
      property bool isActive: Hyprland.focusedWorkspace?.id == (index + 1)

      text: index + 1
      color: isActive ? Theme.base0D : (ws ? Theme.base03 : Theme.base02)
      font { family: Theme.fontFamily; pixelSize: Theme.fontSize; bold: true }

      MouseArea {
	anchors.fill: parent
	onClicked: Hyprland.dispatch("workspace " + (index + 1))
      }
    }
  }
}
