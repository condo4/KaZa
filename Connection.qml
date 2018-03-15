import QtQuick 2.4
import knx 1.0


ConnectionForm {
    connectionState: AppStatus.connectionState
    connectionMessage: AppStatus.stateMessage
    connectionMode: AppStatus.connectionMode

    Component.onCompleted: {
        AppStatus.connect()
    }

    onConnectionStateChanged: {
        if(AppStatus.connectionState == 100)
        {
            stackView.push("Maison.qml")
        }
    }


    connectionButton {
        visible: false
        onClicked: {
            AppStatus.connect()
        }
    }
}
