import QtQuick 2.9
import QtQuick.Controls 2.2
import "./Widget"

Page {
    property alias buttonPlanRDC: buttonPlanRDC
    property alias buttonPlanEtage: buttonPlanEtage
    property alias temperature: textTemperature.text

    id: page

    title: qsTr("Maison des ponts")

    Text {
        id: textTemperature
        y: 425
        text: "temperature"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        font.pixelSize: 12
    }


    Button {
        id: buttonPlanRDC
        y: 364
        width: 100
        text: qsTr("Plan RDC")
        anchors.left: parent.left
        anchors.leftMargin: 50
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 50
    }

    Button {
        id: buttonPlanEtage
        x: 438
        y: 382
        width: 100
        text: qsTr("Plan Etage")
        anchors.right: parent.right
        anchors.rightMargin: 50
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 50
    }
}
