import QtQuick 2.9
import QtQuick.Controls 2.3
import "Widget"

Page {
    id: btnLight
    title: qsTr("Rez de Chaussée")

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
            source: "Images/Plan_RDC3.jpg"
        }

        Presence {
            id: presenceGarageR
            name: "Garageest"
            layerVisible: btnPresenceMode.checked
            width: 286
            height: 342
            anchors.horizontalCenterOffset: 235
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 398
        }

        Presence {
            id: presenceSalonR
            name: "Salonest"
            layerVisible: btnPresenceMode.checked
            width: 155
            height: 289
            anchors.left: parent.left
            anchors.leftMargin: 310
            anchors.top: parent.top
            anchors.topMargin: 178
        }

        Presence {
            id: presencePorcheR
            name: "SalonPorche"
            layerVisible: btnPresenceMode.checked
            width: 142
            height: 108
            anchors.left: parent.left
            anchors.leftMargin: 715
            anchors.top: parent.top
            anchors.topMargin: 45
        }

        Presence {
            id: presenceNordR
            name: "Cournord"
            layerVisible: btnPresenceMode.checked
            width: 142
            height: 461
            anchors.left: parent.left
            anchors.leftMargin: 1016
            anchors.top: parent.top
            anchors.topMargin: 311
        }
        Presence {
            id: presenceCuisineR
            name: "Cuisineest"
            layerVisible: btnPresenceMode.checked
            anchors.left: parent.left
            anchors.leftMargin: 310
            width: 155
            height: 195
            anchors.top: presenceSalonR.bottom
            anchors.topMargin: 0
        }
        Presence {
            id: presenceEntreeR
            name: "Entréeest"
            layerVisible: btnPresenceMode.checked
            width: 155
            height: 132
            anchors.horizontalCenterOffset: 121
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 210
        }
        Presence {
            id: presenceWCR
            name: "Wc"
            layerVisible: btnPresenceMode.checked
            width: 115
            height: 109
            anchors.horizontalCenterOffset: 22
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 531
        }
        Presence {
            id: presenceEtageR
            name: "Couloirouest"
            layerVisible: btnPresenceMode.checked
            width: 73
            height: 205
            anchors.horizontalCenterOffset: 43
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 330
        }

        Dimmer {
            id: dimmerBureau
            x: 100
            scale: 0.7
            anchors.horizontalCenterOffset: -5
            name: "Bureau"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 108
            visible: btnLightMode.checked
        }

        Dimmer {
            id: dimmerSalon
            x: 100
            scale: 0.7
            anchors.horizontalCenterOffset: -212
            name: "Salon"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 228
            visible: btnLightMode.checked
        }

        Dimmer {
            id: dimmerSejour
            x: 100
            scale: 0.7
            anchors.horizontalCenterOffset: -212
            name: "Sejour"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 402
            visible: btnLightMode.checked
        }

        Dimmer {
            id: dimmerCuisine
            x: 100
            scale: 0.7
            anchors.horizontalCenterOffset: -188
            name: "Cuisine"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 597
            visible: btnLightMode.checked
        }
        Dimmer {
            id: dimmerEntree
            x: 100
            scale: 0.7
            anchors.horizontalCenterOffset: 135
            name: "Entrée"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 208
            visible: btnLightMode.checked
        }

        Dimmer {
            id: dimmerWC
            x: 100
            scale: 0.7
            anchors.horizontalCenterOffset: 43
            name: "Wc"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 513
            visible: btnLightMode.checked
        }

        Dimmer {
            id: dimmerGarage
            x: 100
            scale: 0.7
            anchors.horizontalCenterOffset: 261
            name: "Garage"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 493
            visible: btnLightMode.checked
        }

        Light {
            id: lightPorche
            x: 100
            scale: 0.7
            anchors.horizontalCenterOffset: 202
            name: "Porche"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 35
            visible: btnLightMode.checked
        }
        Light {
            id: lightTerrasse
            x: 100
            scale: 0.7
            anchors.horizontalCenterOffset: -413
            name: "Terrasse"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 402
            visible: btnLightMode.checked
        }
        Light {
            id: lightExtNord
            x: 100
            scale: 0.7
            anchors.horizontalCenterOffset: 527
            name: "Cournord"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 487
            visible: btnLightMode.checked
        }
        Dimmer {
            id: dimmerSdb
            x: 100
            scale: 0.7
            anchors.horizontalCenterOffset: -5
            name: "Ledsalledebainbas"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 637
            visible: btnLightMode.checked
        }

        Button {
            id: btnLightMode
            width: 100
            height: 50
            text: qsTr("Light")
            autoExclusive: false
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
            autoExclusive: false
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
        Button {
            id: btnSensor
            width: 100
            height: 50
            text: qsTr("Sensors")
            checked: true
            checkable: true
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.top: btnPresenceMode.bottom
            anchors.topMargin: 10
        }

        Shutter {
            id: shutterBureau
            x: 100
            scale: 0.7
            name: "Bureau"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 10
            visible: btnShutterMode.checked
        }
        Shutter {
            id: shutterSalon
            x: 233
            y: 41
            anchors.horizontalCenterOffset: -333
            anchors.topMargin: 271
            scale: 0.7
            name: "Salon"
            visible: btnShutterMode.checked
        }
        Shutter {
            id: shutterSejour
            x: 194
            y: 356
            anchors.horizontalCenterOffset: -333
            anchors.topMargin: 271
            scale: 0.7
            name: "Sejour"
            visible: btnShutterMode.checked
        }
        Shutter {
            id: shutterCuisinePorte
            x: 205
            y: 634
            anchors.horizontalCenterOffset: -333
            anchors.topMargin: 271
            scale: 0.7
            name: "Cuisineporte"
            visible: btnShutterMode.checked
        }
        Shutter {
            id: shutterSalleDeBain
            x: 513
            y: 667
            anchors.horizontalCenterOffset: -333
            anchors.topMargin: 271
            scale: 0.7
            name: "Salledebainbas"
            visible: btnShutterMode.checked
        }

        Sensor {
            id: sensorTemperatureVMC
            x: 489
            y: 420
            name: "Device_Vmc_Ininput"
            visible: btnSensor.checked
        }

        Sensor {
            id: rectangle1
            x: 722
            y: 137
            scale: 1
            name: "Meas_Temperature_Porche"
            visible: btnSensor.checked
        }

        Sensor {
            id: rectangle2
            x: 1033
            y: 596
            name: "Meas_Temperature_Exterieurnord"
            visible: btnSensor.checked
        }

        Sensor {
            id: sensorLightCuisine
            name: "Meas_Light_Cuisine"
            y: 587
            width: 100
            radius: 11
            scale: 0.7
            anchors.left: parent.left
            anchors.leftMargin: 330
            visible: btnSensor.checked
        }

        Sensor {
            id: sensorLightSalon
            name: "Meas_Light_Salon"
            y: 218
            width: 100
            radius: 11
            scale: 0.7
            anchors.left: parent.left
            anchors.leftMargin: 330
            visible: btnSensor.checked
        }

        Sensor {
            id: sensorLightSejour
            name: "Meas_Light_Sejour"
            y: 410
            width: 100
            scale: 0.7
            anchors.left: parent.left
            anchors.leftMargin: 330
            visible: btnSensor.checked
        }

        Sensor {
            id: sensorLightWC
            name: "Meas_Light_Toilette"
            x: 573
            y: 614
            width: 100
            radius: 11
            scale: 0.7
            visible: btnSensor.checked
        }

        Sensor {
            id: sensorChauffeEau
            name: "Meas_Light_Chauffeeau"
            x: 483
            y: 614
            width: 100
            radius: 11
            scale: 0.7
            visible: btnSensor.checked
        }
        Sensor {
            id: sensorLightEntree
            name: "Meas_Light_Entrée"
            x: 643
            y: 312
            width: 100
            radius: 11
            scale: 0.7
            visible: btnSensor.checked
        }

        Sensor {
            id: sensor
            name: "Meas_Light_Exterieurnord"
            x: 1019
            y: 622
            width: 100
            radius: 11
            scale: 0.7
            visible: btnSensor.checked
        }

        Sensor {
            id: sensorLightGarage
            name: "Meas_Light_Garage"
            x: 804
            y: 598
            width: 100
            radius: 11
            scale: 0.7
            visible: btnSensor.checked
        }

        Sensor {
            id: sensorLightPorche
            name: "Meas_Light_Porche"
            x: 753
            y: 34
            width: 100
            radius: 11
            scale: 0.7
            visible: btnSensor.checked
        }
    }
}
