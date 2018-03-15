import QtQuick 2.4
import knx 1.0

PresenceForm {
    property string name
    property bool layerVisible

    KnxObject {
        id: kpresence
        object: "Meas_Presences_" + name
    }

    visible: (layerVisible &&  (kpresence.value == "1"))
}
