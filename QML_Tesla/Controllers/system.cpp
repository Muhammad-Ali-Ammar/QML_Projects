#include "system.h"

#include <QDebug>
#define cout qDebug()
#define endl "\n"

System::System(QObject *parent)
    : QObject{parent},
    m_carLocked(true),
    m_p_carTemperature("60 ")
{

    timerObj = new QTimer(this);
    timerObj->setInterval(500); //update each 500 ms
    timerObj->setSingleShot(true);
    connect(timerObj,&QTimer::timeout,this, &System::timerTimeout);
    timerTimeout();

}

bool System::carLocked() const
{
    return m_carLocked;
}

void System::setcarLocked(bool newCarLocked)
{
    if (m_carLocked == newCarLocked)
        return;
    m_carLocked = newCarLocked;
    emit carLockedChanged();
}

QString System::p_carCurrentTimer() const
{
    return m_p_carCurrentTimer;
}

void System::setp_carCurrentTimer(const QString &newP_carCurrentTimer)
{
    if (m_p_carCurrentTimer == newP_carCurrentTimer)
        return;
    m_p_carCurrentTimer = newP_carCurrentTimer;
    emit p_carCurrentTimerChanged();
}

void System::timerTimeout()
{
    QString loc_currentTime= QDateTime().currentDateTime().QDateTime::toString("hh:mm ap");
    setp_carCurrentTimer(loc_currentTime);
    // cout<<loc_currentTime<<endl;
    timerObj->start();
}

QString System::p_carTemperature() const
{
    return m_p_carTemperature;
}

void System::setp_carTemperature(const QString &newP_carTemperature)
{
    if (m_p_carTemperature == newP_carTemperature)
        return;
    m_p_carTemperature = newP_carTemperature;
    emit p_carTemperatureChanged();
}
