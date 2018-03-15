import QtQuick 2.4
import knx 1.0

ShutterForm {
    property string name

    KnxObject {
        id: kclose
        object: "Blind_Close_" + name
    }
    KnxObject {
        id: kopen
        object: "Blind_Open_" + name
    }
    KnxObject {
        id: kheight
        object: "Blind_Height_" + name
    }
    KnxObject {
        id: kmove
        object: "Blind_Move_" + name
    }
    KnxObject {
        id: kstepstop
        object: "Blind_Stepstop_" + name
    }

    shutterHeight: parseFloat(kheight.value)

    buttonUp {
        onClicked: {
            kmove.changeValue("0")
        }
    }

    buttonDown {
        onClicked: {
            kmove.changeValue("1")
        }
    }

    buttonStop {
        onClicked: {
            kstepstop.changeValue("1")
        }
    }

    rectangleOpen {
        color: (kopen.value == "1")?("#000000"):("#888888")
    }

    rectangleClose {
        color: (kclose.value == "1")?("#000000"):("#ffffff")
    }

    KnxObject {
        id: kPos
        object: "Blind_Position_" + name
    }

    btnFullOpen {
        onClicked: kPos.changeValue("0")
    }

    btnFullClose {
        onClicked: kPos.changeValue("100")
    }

    btnMidOpen {
        onClicked: kPos.changeValue("25")
    }

    btnMidClose {
        onClicked: kPos.changeValue("75")
    }
}
