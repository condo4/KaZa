import QtQuick 2.4
import QtQuick.Controls 2.2

Item {
    id: dimmer
    width: 149
    height: 121

    property bool status
    property bool error
    property alias slider: slider
    property alias buttonSwitch: buttonSwitch
    property string picture: (status) ? ("/img/Light_ON.png") : ("/img/Light_OFF.png")

    Rectangle {
        id: rectangleBackground
        height: 180
        color: "transparent"
        border.width: 5
        border.color: (error) ? ("#ffccccff") : ("transparent")
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10

        Image {
            id: image
            width: 70
            height: 70
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            fillMode: Image.Stretch
            source: picture
            z: 0
        }

        Slider {
            id: slider
            y: 262
            z: 1
            height: 30
            to: 100
            anchors.right: parent.right
            anchors.rightMargin: 5
            anchors.left: parent.left
            anchors.leftMargin: 5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 5
        }

        MouseArea {
            z: 0
            id: buttonSwitch
            anchors.topMargin: 0
            anchors.fill: parent
        }
    }
}
