import QtQuick 2.4
import knx 1.0

LightControlerForm {
    property string name

    light: kLight.value + " " + kLight.unit

    KnxObject {
        id: kLight
        object: "Meas_Light_" + name
    }

    KnxObject {
        id: kMode
        object: "Configuration_Modemanuel_" + name
    }

    switchAuto {
        checked: kMode.value == "1"
        text: name + " Auto"
        onClicked: {
            kMode.changeValue((switchAuto.checked)?("1"):("0"))
        }
    }
}
