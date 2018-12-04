#include "udpnetwork.h"

UDPNetwork::UDPNetwork(QObject *parent) : QObject(parent)
{
    socket = new QUdpSocket(this);
    socket->bind(QHostAddress::LocalHost, 1234);
    connect (socket, SIGNAL(readyRead()), this, SLOT(readyRead()));
}

void UDPNetwork::sendMessage()
{
   QString name =  g_data->state.a_name = "airplane001";

    QByteArray Data;
    Data.append(name);
    socket->writeDatagram(Data, QHostAddress::LocalHost, 1234);
}

void UDPNetwork::readyRead()
{
    QByteArray Buffer;
    Buffer.resize(socket->pendingDatagramSize());

    QHostAddress sender;
    quint16 senderPort;
    socket->readDatagram(Buffer.data(), Buffer.size(), &sender, &senderPort);

    qDebug()<<sender.toString();
    qDebug()<<senderPort;

    qDebug()<<Buffer;

}
