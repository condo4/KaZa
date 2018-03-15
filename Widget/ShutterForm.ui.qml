import QtQuick 2.4
import QtQuick.Controls 2.2

Item {
    property int shutterHeight
    property alias buttonUp: buttonUp
    property alias buttonDown: buttonDown
    property alias buttonStop: buttonStop
    property alias rectangleOpen: rectangleOpen
    property alias rectangleClose: rectangleClose
    property alias btnFullOpen: btnFullOpen
    property alias btnFullClose: btnFullClose
    property alias btnMidOpen: btnMidOpen
    property alias btnMidClose: btnMidClose

    id: item1
    width: 150
    height: 200

    Rectangle {
        id: rectangleBackground
        z: -1
        anchors.fill: parent
        border.color: "#000000"
        border.width: 1
    }

    Button {
        id: buttonUp
        width: 30
        height: 30
        text: "^"
        anchors.right: parent.horizontalCenter
        anchors.rightMargin: 45
        anchors.left: parent.left
        anchors.leftMargin: 1
        anchors.top: parent.top
        anchors.topMargin: 1
    }

    Button {
        id: buttonDown
        y: 152
        width: 30
        height: 30
        text: "V"
        anchors.right: parent.horizontalCenter
        anchors.rightMargin: 45
        anchors.left: parent.left
        anchors.leftMargin: 1
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 1
    }

    Button {
        id: buttonStop
        text: qsTr("-")
        anchors.right: parent.horizontalCenter
        anchors.rightMargin: 45
        anchors.bottom: buttonDown.top
        anchors.bottomMargin: 1
        anchors.top: buttonUp.bottom
        anchors.topMargin: 1
        anchors.left: parent.left
        anchors.leftMargin: 1
    }

    Rectangle {
        id: rectangleShutter
        height: ((parent.height - rectangleOpen.height - rectangleClose.height)
                 * shutterHeight) / 100
        color: "#888888"
        anchors.right: parent.right
        anchors.rightMargin: 30
        anchors.left: buttonStop.right
        anchors.leftMargin: 2
        anchors.top: rectangleOpen.bottom
        anchors.topMargin: 0
    }

    Rectangle {
        id: rectangleOpen
        height: 15
        color: "#888888"
        anchors.right: parent.right
        anchors.rightMargin: 30
        anchors.left: buttonUp.right
        anchors.leftMargin: 2
        anchors.top: parent.top
        anchors.topMargin: 1
    }

    Rectangle {
        id: rectangleClose
        y: 147
        height: 15
        color: "#ffffff"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 1
        anchors.right: parent.right
        anchors.rightMargin: 30
        anchors.left: buttonDown.right
        anchors.leftMargin: 2
    }

    Rectangle {
        id: recFullOpen
        x: 136
        width: 30
        height: 30
        color: "#ffffff"
        radius: 15
        border.color: "#000000"
        anchors.top: parent.top
        anchors.topMargin: 2
        anchors.right: parent.right
        anchors.rightMargin: 2

        MouseArea {
            id: btnFullOpen
            anchors.fill: parent
        }
    }

    Rectangle {
        id: recMidOpen
        x: 120
        width: 30
        height: 30
        color: "#999999"
        radius: 15
        anchors.top: recFullOpen.bottom
        anchors.topMargin: 25
        anchors.right: parent.right
        anchors.rightMargin: 2

        MouseArea {
            id: btnMidOpen
            anchors.fill: parent
        }
    }

    Rectangle {
        id: recMidClose
        x: 120
        y: 115
        width: 30
        height: 30
        color: "#444444"
        radius: 15
        anchors.bottom: recFullClose.top
        anchors.bottomMargin: 25
        anchors.right: parent.right
        anchors.rightMargin: 2

        MouseArea {
            id: btnMidClose
            anchors.fill: parent
        }
    }

    Rectangle {
        id: recFullClose
        x: 120
        y: 168
        width: 30
        height: 30
        color: "#000000"
        radius: 15
        anchors.right: parent.right
        anchors.rightMargin: 2
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 2

        MouseArea {
            id: btnFullClose
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.fill: parent
        }
    }
}
