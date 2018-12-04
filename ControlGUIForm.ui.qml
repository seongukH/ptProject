import QtQuick 2.4
import QtQuick.Controls 1.6

Item {
    width: 640
    height: 480
    property alias x_txt: x_txt
    property alias y_txt: y_txt
    property alias name_txt: name_txt
    property alias textField: textField
    property alias button: button
    property alias textArea: textArea
    property alias state_green: state_green
    property alias state_red: state_red
    property alias state_yellow: state_yellow
    property alias rightButton: rightButton
    property alias leftButton: leftButton
    property alias downButton: downButton
    property alias upButton: upButton

    Rectangle {
        id: rectangle
        color: "#bfbfbf"
        anchors.fill: parent

        MouseArea {
            id: upButton
            x: 97
            y: 180
            width: 45
            height: 36

            Rectangle {
                id: rectangle1
                color: "#ffffff"
                anchors.fill: parent
            }
        }

        MouseArea {
            id: downButton
            x: 97
            y: 222
            width: 45
            height: 36

            Rectangle {
                id: rectangle2
                color: "#ffffff"
                anchors.fill: parent
            }
        }

        MouseArea {
            id: leftButton
            x: 46
            y: 222
            width: 45
            height: 36

            Rectangle {
                id: rectangle3
                color: "#ffffff"
                anchors.fill: parent
            }
        }

        MouseArea {
            id: rightButton
            x: 148
            y: 222
            width: 45
            height: 36

            Rectangle {
                id: rectangle4
                color: "#ffffff"
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.fill: parent
            }
        }

        MouseArea {
            id: state_red
            x: 46
            y: 276
            width: 45
            height: 36

            Rectangle {
                id: rectangle6
                color: "#ff0000"
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.fill: parent
            }
        }

        MouseArea {
            id: state_yellow
            x: 97
            y: 276
            width: 45
            height: 36

            Rectangle {
                id: rectangle7
                color: "#ffff00"
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.fill: parent
            }
        }

        MouseArea {
            id: state_green
            x: 148
            y: 276
            width: 45
            height: 36

            Rectangle {
                id: rectangle8
                color: "#00ff00"
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.fill: parent
            }
        }

        TextArea {
            id: textArea
            x: 347
            y: 108
            width: 240
            height: 188
        }

        TextField {
            id: textField
            x: 347
            y: 314
            width: 152
            height: 23
            placeholderText: qsTr("Text Field")
        }

        Button {
            id: button
            x: 512
            y: 314
            text: qsTr("Button")
        }

        Text {
            id: name_txt
            x: 347
            y: 74
            width: 101
            height: 28
            text: qsTr("Text")
            font.pixelSize: 12
        }

        Text {
            id: x_txt
            x: 455
            y: 74
            text: qsTr("0")
            font.pixelSize: 12
        }

        Text {
            id: y_txt
            x: 491
            y: 74
            text: qsTr("0")
            font.pixelSize: 12
        }
    }
}


/*##^## Designer {
    D{i:3;anchors_height:200;anchors_width:200}D{i:1;anchors_height:200;anchors_width:200;anchors_x:227;anchors_y:124}
}
 ##^##*/
