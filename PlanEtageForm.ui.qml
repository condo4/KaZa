import QtQuick 2.9
import QtQuick.Controls 2.3
import "Widget"

Page {
    id: btnLight
    title: qsTr("Etage")

    property alias plan: plan
    property alias backImg: image.source

    Flickable {
        id: plan
        contentHeight: 865
        contentWidth: 1158
        anchors.fill: parent

        Image {
            id: image
            z: -5
            anchors.fill: parent
            source: "Images/Plan_Etage.jpg"
        }

        Button {
            id: btnLightMode
            width: 100
            height: 50
            text: qsTr("Light")
            autoExclusive: true
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.top: parent.top
            anchors.topMargin: 10
            checked: true
            checkable: true
        }

        Button {
            id: btnShutterMode
            width: 100
            height: 50
            text: qsTr("Shutter")
            autoExclusive: true
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.top: btnLightMode.bottom
            anchors.topMargin: 10
            checked: false
            checkable: true
        }

        Button {
            id: btnPresenceMode
            width: 100
            height: 50
            text: qsTr("Presence")
            autoExclusive: false
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.top: btnShutterMode.bottom
            anchors.topMargin: 10
            checked: false
            checkable: true
        }

        Presence {
            id: presenceEtageR
            name: "Couloirouest"
            layerVisible: btnPresenceMode.checked
            width: 149
            height: 268
            anchors.horizontalCenterOffset: 1
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 330
        }

        Dimmer {
            id: dimmerCh1
            x: 100
            scale: 0.7
            anchors.horizontalCenterOffset: -203
            name: "Ledch1"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 180
            visible: btnLightMode.checked
        }

        Dimmer {
            id: dimmerCh2
            x: 100
            scale: 0.7
            anchors.horizontalCenterOffset: -179
            name: "Ledch2"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 439
            visible: btnLightMode.checked
        }

        Dimmer {
            id: dimmerCh3
            x: 100
            scale: 0.7
            anchors.horizontalCenterOffset: -158
            name: "Ledch3"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 630
            visible: btnLightMode.checked
        }

        Dimmer {
            id: dimmerCouloirest
            x: 100
            scale: 0.7
            anchors.horizontalCenterOffset: -21
            name: "Couloirest"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 326
            visible: btnLightMode.checked
        }

        Dimmer {
            id: dimmerCouloirouest
            x: 100
            scale: 0.7
            anchors.horizontalCenterOffset: -15
            name: "Couloirouest"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 495
            visible: btnLightMode.checked
        }

        Light {
            id: lightDclSalledebainhaut
            x: 100
            scale: 0.7
            anchors.horizontalCenterOffset: 37
            name: "Dclsalledebainhaut"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 608
            visible: btnLightMode.checked
        }

        Light {
            id: lightDclch4
            x: 100
            scale: 0.7
            anchors.horizontalCenterOffset: 164
            name: "Dclch4"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 163
            visible: btnLightMode.checked
        }

        Light {
            id: lightDclbuanderie
            x: 100
            scale: 0.7
            anchors.horizontalCenterOffset: -31
            name: "Dclbuanderie"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 112
            visible: btnLightMode.checked
        }

        Shutter {
            id: shutterCh1
            x: 213
            y: 35
            anchors.horizontalCenterOffset: -333
            anchors.topMargin: 271
            scale: 0.7
            name: "Ch1"
            visible: btnShutterMode.checked
        }

        Shutter {
            id: shutterCh2
            x: 171
            y: 412
            anchors.horizontalCenterOffset: -333
            anchors.topMargin: 271
            scale: 0.7
            name: "Ch2"
            visible: btnShutterMode.checked
        }

        Shutter {
            id: shutterCh3
            x: 223
            y: 670
            anchors.horizontalCenterOffset: -333
            anchors.topMargin: 271
            scale: 0.7
            name: "Ch3"
            visible: btnShutterMode.checked
        }

        Shutter {
            id: shutterCh4
            x: 577
            y: -30
            anchors.horizontalCenterOffset: -333
            anchors.topMargin: 271
            scale: 0.7
            name: "Buanderiech4"
            visible: btnShutterMode.checked
        }

        Shutter {
            id: shutterBuanderie
            x: 467
            y: -30
            anchors.horizontalCenterOffset: -333
            anchors.topMargin: 271
            scale: 0.7
            name: "Buanderiech4"
            visible: btnShutterMode.checked
        }

        Shutter {
            id: shutterSalledebain
            x: 527
            y: 687
            anchors.horizontalCenterOffset: -333
            anchors.topMargin: 271
            scale: 0.7
            name: "Salledebainhaut"
            visible: btnShutterMode.checked
        }
    }
}
