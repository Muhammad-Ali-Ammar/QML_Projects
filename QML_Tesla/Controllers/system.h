#ifndef SYSTEM_H
#define SYSTEM_H

#include <QObject>
#include<QTimer>
#include <QDateTime>
class System : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool carLocked READ carLocked WRITE setCarLocked NOTIFY carLockedChanged FINAL)
    Q_PROPERTY(QString p_carCurrentTimer READ p_carCurrentTimer WRITE setP_carCurrentTimer NOTIFY p_carCurrentTimerChanged FINAL)
    Q_PROPERTY(QString p_carTemperature READ p_carTemperature WRITE setP_carTemperature NOTIFY p_carTemperatureChanged FINAL)
public:
    explicit System(QObject *parent = nullptr);

    bool carLocked() const;
    void setcarLocked(bool newCarLocked);

    QString p_carCurrentTimer() const;
    void setp_carCurrentTimer(const QString &newP_carCurrentTimer);

    QString p_carTemperature() const;
    void setp_carTemperature(const QString &newP_carTemperature);

public slots:
    void timerTimeout();
signals:
    void carLockedChanged();
    void p_carCurrentTimerChanged();

    void p_carTemperatureChanged();

private:
    bool m_carLocked;
    QString m_p_carCurrentTimer;
    QTimer* timerObj;

    QString m_p_carTemperature;
};

#endif // SYSTEM_H
