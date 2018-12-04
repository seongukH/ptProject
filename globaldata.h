#ifndef GLOBALDATA_H
#define GLOBALDATA_H

#include <QObject>
#include <QDebug>
#include <QtMath>

struct a_state{

    QString a_name;
    qreal a_x = 500.0f;
    qreal a_y = 30.0f;
    float a_r = 0;
    int status = 1;
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


