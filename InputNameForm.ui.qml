import QtQuick 2.4

Item {
    width: 640
    height: 480
    property alias textEdit: textEdit
    property alias mouseArea: mouseArea

    MouseArea {
        id: mouseArea
        x: 476
        y: 177
        width: 100
        height: 100

        Rectangle {
            id: rectangle
            color: "#ded3d3"
            anchors.fill: parent
        }
    }

    TextEdit {
        id: textEdit
        x: 263
        y: 212
        width: 115
        height: 30
        text: qsTr("Text Edit")
        z: 1
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 20

        Rectangle {
            id: rectangle1
            color: "#faf7f7"
            z: -2
            anchors.fill: parent
        }
    }

    Rectangle {
        id: rectangle2
        color: "#554f4f"
        z: -1
        anchors.fill: parent
    }
}


/*##^## Designer {
    D{i:2;anchors_height:200;anchors_width:200}D{i:5;anchors_height:200;anchors_width:200}
D{i:6;anchors_height:200;anchors_width:200;anchors_x:33;anchors_y:20}
}
 ##^##*/
