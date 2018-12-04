#ifndef CONTROLPLANE_H
#define CONTROLPLANE_H

#include <QObject>
#include <globaldata.h>

class ControlPlane : public QObject
{
    Q_OBJECT
public:
    explicit ControlPlane(QObject *parent = nullptr);

signals:

public slots:

private:
    GlobalData *g_data = GlobalData::getInstance();

};

#endif // CONTROLPLANE_H
