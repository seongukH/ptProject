#include "controlplane.h"

ControlPlane::ControlPlane(QObject *parent) : QObject(parent)
{

}

void ControlPlane::setName(QString name)
{
    g_data->state.a_name = name;
}

void ControlPlane::moveFront()
{
   g_data->state.a_x += qSin(qDegreesToRadians( g_data->state.a_r));  //x
   g_data->state.a_y -= qCos(qDegreesToRadians(g_data->state.a_r)); //y

}

void ControlPlane::moveBack()
{

}

void ControlPlane::turnRight()
{
    g_data->state.a_r ++;
}

void ControlPlane::turnLeft()
{
    g_data->state.a_r --;
}

void ControlPlane::setStatus(int stat)
{
    g_data->state.status = stat;
}
