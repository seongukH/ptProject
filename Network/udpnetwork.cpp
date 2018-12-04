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

  // g_data->state={"airplane001", 11, 22, 33, 44};

  char a_x[10] ;
  char a_y[10] ;
  char a_r[10] ;
  char status[10] ;

   //  itoa(123456, integer, 10);

  //   qDebug()<<integer;

    QByteArray Data;

    Data.append( "sendMessage/");
    Data.append( g_data->state.a_name+"/");
    Data.append( itoa( g_data->state.a_x, a_x, 10));
    Data.append( "/");
    Data.append( itoa( g_data->state.a_y, a_y, 10));
    Data.append( "/");
    Data.append( itoa( g_data->state.a_r, a_r, 10));
    Data.append( "/");
    Data.append( itoa( g_data->state.status, status, 10));
    Data.append( "/");



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
