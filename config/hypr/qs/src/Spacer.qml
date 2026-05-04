import QtQuick

Rectangle {
    property int hMargin: 15

    width: hMargin * 2

    Rectangle {
        anchors.centerIn: parent
        width: 1
        height: 16
        color: Theme.base03
    }

}
