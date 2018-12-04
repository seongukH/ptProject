#include "udpnetwork.h"

UDPNetwork::UDPNetwork(QObject *parent) : QObject(parent)
{
    socket = new QUdpSocket(this);
    socket->bind(QHostAddress::LocalHost, 1234);
    connect (socket, SIGNAL(readyRead()), this, SLOT(readyRead()));
}

void UDPNetwork::sendMessage()
{
   QString name = "airplane001"; //g_data->state.a_name = "airplane001";

   g_data->state={"airplane001", "1000", "2", "10", "100"};

  // char integer[10] ;

   //  itoa(123456, integer, 10);

  //   qDebug()<<integer;

    QByteArray Data;

    Data.append( "sendMessage/");
    Data.append( g_data->state.a_name+"/");
    Data.append( g_data->state.a_x+"/");
    Data.append( g_data->state.a_y+"/");
    Data.append( g_data->state.a_r+"/");
    Data.append( g_data->state.status+"/");


    socket->writeDatagram(Data, QHostAddress::LocalHost, 1234);
    qDebug()<<"send : "<<Data;
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
