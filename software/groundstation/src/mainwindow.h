#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include "log.h"
#include "serialconnection.h"
#include "datamanager.h"

#include "icehppmgraphic.h"

#include <QMainWindow>

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
    // Serial connection interface
    void on_serialPortsList_activated(const QString &arg1);
    void on_serialBaudRateList_activated(const QString &arg1);
    void on_serialConnect_clicked();

    // Data visualisation
    void on_penDepthChange();

private:
    Ui::MainWindow *ui;

    Log log;
    SerialConnection serialConnection;
    DataManager dataManager;
};

#endif // MAINWINDOW_H
