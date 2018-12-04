#ifndef GLOBALDATA_H
#define GLOBALDATA_H

#include <QObject>

struct a_state{

    QString a_name;
    int a_x;
    int a_y;
    int a_r;
    int status;
};

class GlobalData
{

public:
    virtual ~GlobalData();

    static GlobalData *getInstance();

    a_state state;


private:
    GlobalData();




};

#endif // GLOBALDATA_H


