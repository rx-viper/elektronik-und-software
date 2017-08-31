#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include "icehppmgraphic.h"

#include <QMainWindow>
#include "./qcustomplot.h"

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
    void drawIceTemperatures(QCustomPlot *customPlot, float Temperatures[][3]);

    // Data visualisation
    void on_penDepthChange();

private:
    Ui::MainWindow *ui;
};

#endif // MAINWINDOW_H
