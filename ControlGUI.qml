import QtQuick 2.4

ControlGUIForm {




    //-----------------------
    //ControlButtons
    //-----------------------

    downButton.onPressed: {
    }

    upButton.onPressed:  {
        mgrcontrol.moveFront();
    }

    leftButton.onPressed: {
        mgrcontrol.turnLeft();
    }

    rightButton.onPressed: {
        mgrcontrol.turnRight();
    }


    //-----------------------
    //ChatComponents
    //-----------------------
    button.onClicked: {
        mgrudp.sendMessage(textField.text)
        textArea.text =
                textArea.text +mgrudp.getName()+">>"+ textField.text +"\n"
        textField.text = ""
    }

    //textField.text
    //textArea

    //-----------------------
    //Show name&location
    //-----------------------

    Timer{
        interval: 500
        repeat: true
        running: true

        onTriggered: {
            name_txt.text = mgrudp.getName()
            x_txt.text = mgrudp.getX()
            y_txt.text = mgrudp.getY()


        }

    }



}
