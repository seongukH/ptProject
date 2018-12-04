import QtQuick 2.4

import ControlPlane 1.0

InputNameForm {
    Loader{id : pageLoader}

    mouseArea.onClicked: {
        pageLoader.source="ControlGUI.qml";
        textEdit.visible = false;
        console.log(textEdit.text);
        setName();
        timer.running = true;

    }

    Timer{
        id : timer
        interval: 1000
        repeat:true
        running: false

        onTriggered: {
            mgrudp.sendMessage();
        }
    }


    function setName(){
        mgrcontrol.setName(textEdit.text);

    }




}
