#ifndef CONTROLPLANE_H
#define CONTROLPLANE_H

#include <QObject>
#include <globaldata.h>

class ControlPlane : public QObject
{
    Q_OBJECT
public:
    explicit ControlPlane(QObject *parent = nullptr);

   Q_INVOKABLE  void setName(QString name);

  Q_INVOKABLE  void moveFromt();
  Q_INVOKABLE  void moveBack();

  Q_INVOKABLE  void turnRight();
  Q_INVOKABLE  void turnLeft();

  Q_INVOKABLE  void setStatus();

signals:

public slots:

private:

    GlobalData *g_data = GlobalData::getInstance();

};

#endif // CONTROLPLANE_H
