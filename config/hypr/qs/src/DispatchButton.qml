import QtQuick
import Quickshell.Hyprland

Text {
    required property string dispatch

    color: Theme.base07

    font {
        family: Theme.fontFamily
        pixelSize: Theme.fontSize
        bold: true
    }

    MouseArea {
        anchors.fill: parent
        onClicked: Hyprland.dispatch(dispatch)
    }

}
