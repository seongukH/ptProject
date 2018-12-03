import QtQuick 2.9
import QtQuick.Window 2.2

import UDPNetwork 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("A_Client")


    Loader{
        id : pageLoader
    }

    Component.onCompleted: {
        pageLoader.source="InputName.qml";
    }


    UDPNetwork{
        id : mgrudp
    }
}
