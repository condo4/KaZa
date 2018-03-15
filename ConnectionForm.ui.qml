import QtQuick 2.9
import QtQuick.Controls 2.2
import "./Widget"
import knx 1.0

Page {
    id: page
    property alias connectionState: progressBar.value
    property alias connectionMode: textConnectionMode.text
    property alias connectionMessage: textMessage.text
    property alias connectionButton: button

    ProgressBar {
        id: progressBar
        to: 100
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Text {
        id: textMessage
        anchors.top: progressBar.bottom
        anchors.topMargin: 15
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 12
    }

    Button {
        id: button
        x: 280
        y: 160
        text: "Connect remote"
        anchors.bottom: progressBar.top
        anchors.bottomMargin: 50
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Text {
        id: textConnectionMode
        x: 326
        text: qsTr("Not connected")
        anchors.top: textMessage.bottom
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 12
    }
}
