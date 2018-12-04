#include "controlplane.h"

ControlPlane::ControlPlane(QObject *parent) : QObject(parent)
{

}

void ControlPlane::setName(QString name)
{
    g_data->state.a_name = name;
}

void ControlPlane::moveFromt()
{

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

void ControlPlane::setStatus()
{

}
