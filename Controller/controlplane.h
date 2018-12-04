#ifndef CONTROLPLANE_H
#define CONTROLPLANE_H

#include <QObject>

class ControlPlane : public QObject
{
    Q_OBJECT
public:
    explicit ControlPlane(QObject *parent = nullptr);

signals:

public slots:
};

#endif // CONTROLPLANE_H