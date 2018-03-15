import QtQuick 2.4
import knx 1.0

DimmerForm {
    property string name

    status: (kstatus.value == "1")
    error: (kerrors.value == "1")

    buttonSwitch {
        onClicked: {
            kswitch.changeValue((kstatus.value == "1")?("0"):("1"))
        }
    }

    KnxObject {
        id: ksetvalue
        object: "Light_Setvalue_" + name
    }

    KnxObject {
        id: kswitch
        object: "Light_Switch_" + name
    }

    KnxObject {
        id: kdimming
        object: "Light_Dimming_" + name
    }

    KnxObject {
        id: kstatus
        object: "Light_Statut_" + name
    }

    KnxObject {
        id: kerrors
        object: "Light_Errors_" + name
    }

    KnxObject {
        id: kgetvalue
        object: "Light_Getvalue_" + name

        onValueChanged: {
            slider.value = value
        }
    }

    slider.onPressedChanged: {
        if((!slider.pressed) && (kgetvalue.value !== slider.value))
        {
            ksetvalue.changeValue(slider.value)
            slider.value = kgetvalue.value
        }
    }

}
