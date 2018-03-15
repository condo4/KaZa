import QtQuick 2.4
import QtQuick.Controls 2.2

Item {
    id: item1
    property alias light: light.text
    property alias switchAuto: switchAuto

    width: 200
    height: 58

    Label {
        id: light
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 12
    }

    Switch {
        id: switchAuto
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: light.bottom
        anchors.topMargin: 10
    }
}
