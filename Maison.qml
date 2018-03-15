import QtQuick 2.4
import knx 1.0


MaisonForm {
    property KnxObject deviceVmcIninput

    temperature: kVmcIninput.value + " " + kVmcIninput.unit

    KnxObject {
        id: kVmcIninput
        object: "Device_Vmc_Ininput"
    }


    buttonPlanRDC {
        onClicked: {
            stackView.push("PlanRDC.qml")
        }
    }
    buttonPlanEtage {
        onClicked: {
            stackView.push("PlanEtage.qml")
        }
    }
}
