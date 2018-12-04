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
    Q_INVOKABLE void sendMessage(QString string);
    Q_INVOKABLE void sendStatus();


    Q_INVOKABLE QString getName();
    Q_INVOKABLE qreal getX();
    Q_INVOKABLE qreal getY();




signals:

public slots:
    void readyRead();

private:
    QUdpSocket *socket;

    GlobalData *g_data = GlobalData::getInstance();
};

#endif // UDPNETWORK_H
