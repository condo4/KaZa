import QtQuick 2.4
import knx 1.0

SensorForm {
    property string name

    KnxObject {
        id: kSensor
        object: name
    }

    value:  kSensor.value + " " + kSensor.unit
}
