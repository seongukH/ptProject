#ifndef GLOBALDATA_H
#define GLOBALDATA_H

#include <QObject>

struct a_state{

    QString a_name;
    QString a_x;
    QString a_y;
    QString a_r;
    QString status;
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


