import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

Scope {
  id: root

  property int cpuUsage: 0
  property int memUsage: 0
  property var lastCpuIdle: 0
  property var lastCpuTotal: 0

  Variants {
    model: Quickshell.screens;

    PanelWindow {
      required property var modelData
      screen: modelData

      anchors {
	top: true
	left: true
	right: true
      }

      color: "transparent"
      implicitHeight: childrenRect.height

      RowLayout {
	anchors.fill: parent
	implicitHeight: childrenRect.height

	ThemedBevelBox {
	  Layout.alignment: Qt.AlignLeft | Qt.AlignTop
	  showBorder: [false, true, true, false]

	  Workspaces {
	    anchors.centerIn: parent
	  }
	}

	ThemedBevelBox {
	  Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
	  showBorder: [false, true, true, true]

	  ClockWidget {
	    anchors.centerIn: parent
	  }
	}

	// System Monitor
	ThemedBevelBox {
	  Layout.alignment: Qt.AlignRight | Qt.AlignTop
	  showBorder: [false, false, true, true]

	  RowLayout {
	    anchors.centerIn: parent
	    Text {
	      text: "CPU: " + cpuUsage + "%";
	      color: Theme.base07
	      font { family: Theme.fontFamily; pixelSize: Theme.fontSize; bold: true}
	    }

	    Rectangle { width: 1; height: 16; color: Theme.base03}

	    // Memory
	    Text {
	      text: "Mem: " + memUsage + "%"
	      color: Theme.base07
	      font { family: Theme.fontFamily; pixelSize: Theme.fontSize; bold: true}
	    }
	  }
	}
      }
    }
  }
}
