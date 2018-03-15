import QtQuick 2.4

Rectangle {
    property alias value: textValue.text
    id: rectangle
    width: 74
    height: 22
    color: "#ffffff"
    radius: 18

    Text {
        id: textValue
        text: qsTr("22.5 °C")
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        font.bold: true
        font.pixelSize: 12
    }
}
