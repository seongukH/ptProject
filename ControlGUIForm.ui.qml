import QtQuick 2.4

Item {
    width: 640
    height: 480
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
    }
}


/*##^## Designer {
    D{i:3;anchors_height:200;anchors_width:200}D{i:1;anchors_height:200;anchors_width:200;anchors_x:227;anchors_y:124}
}
 ##^##*/
