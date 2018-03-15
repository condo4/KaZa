import QtQuick 2.4
import knx 1.0

LightForm {
    property string name

    status: (kstatus.value == "1")

    buttonSwitch {
        onClicked: {
            kswitch.changeValue((kstatus.value == "1")?("0"):("1"))
        }
    }

    KnxObject {
        id: kswitch
        object: "Light_Switch_" + name
    }

    KnxObject {
        id: kstatus
        object: "Light_Statut_" + name
    }

}
