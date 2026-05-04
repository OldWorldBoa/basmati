import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Hyprland
import Quickshell.Wayland

Scope {
    id: root

    property int cpuUsage: 0
    property int memUsage: 0
    property var lastCpuIdle: 0
    property var lastCpuTotal: 0

    Variants {
        model: Quickshell.screens

        PanelWindow {
            required property var modelData

            screen: modelData
            color: "transparent"
            implicitHeight: 40

            anchors {
                top: true
                left: true
                right: true
            }

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

                ThemedBevelBox {
                    Layout.alignment: Qt.AlignRight | Qt.AlignTop
                    showBorder: [false, false, true, true]

                    RowLayout {
                        anchors.centerIn: parent

                        DispatchButton {
                            text: "󰋍 "
                            dispatch: "exec kitty pulsemixer"
                        }

                        Spacer {
                        }

                        DispatchButton {
                            text: "󰂳"
                            dispatch: "exec kitty bluetui"
                        }

                        Spacer {
                        }

                        DispatchButton {
                            text: "󰇅"
                            dispatch: "exec kitty gotop"
                        }

                    }

                }

            }

        }

    }

}
