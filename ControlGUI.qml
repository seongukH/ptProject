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


    //-----------------------
    //Show name&location
    //-----------------------



}
