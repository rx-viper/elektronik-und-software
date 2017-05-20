#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include "log.h"
#include "status.h"
#include "datamanager.h"
#include "icehppmgraphic.h"

#include <QMainWindow>
#include <QtSerialPort/QSerialPort>


class Console;
class SettingsDialog;


namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private slots:
    void on_actionConnect_triggered();
    void on_actionDisconnect_triggered();
    void on_actionSetup_triggered();
    void on_logAutoScroll_stateChanged(int arg1);

private:
    Ui::MainWindow *ui;

    Status status;
    Log log;

    SettingsDialog *settings;
    QSerialPort *serial;

    DataManager dataManager;

    void logAndStatus(const QString &message);
    void receiveSerialData();
};

#endif // MAINWINDOW_H
