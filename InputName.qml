import QtQuick 2.4

InputNameForm {
    Loader{id : pageLoader}

    mouseArea.onClicked: {
        pageLoader.source="ControlGUI.qml";

        textEdit.visible = false;
    }
}
