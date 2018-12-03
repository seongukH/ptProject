#ifndef UDPNETWORK_H
#define UDPNETWORK_H

#include <QObject>
#include <QUdpSocket>

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
};

#endif // UDPNETWORK_H
