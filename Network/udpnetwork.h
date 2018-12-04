#ifndef UDPNETWORK_H
#define UDPNETWORK_H

#include <QObject>
#include <QUdpSocket>

#include <globaldata.h>

class UDPNetwork : public QObject
{
    Q_OBJECT
public:
    explicit UDPNetwork(QObject *parent = nullptr);
    Q_INVOKABLE void sendMessage();
signals:

public slots:
    void readyRead();

private:
    QUdpSocket *socket;

    //GlobalData *g_data = GlobalData::getInstance();
};

#endif // UDPNETWORK_H
