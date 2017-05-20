#ifndef STATUS_H
#define STATUS_H

#include <QStatusBar>
#include <QString>
#include <QLabel>

class Status
{
    QLabel *statusLabel;

public:
    Status();
    ~Status();

    void setStatusBar(QStatusBar *statusBar);
    void update(const QString& message);
};

#endif // STATUS_H
