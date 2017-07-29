#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow),
    serialConnection(log),
    dataManager(log)
{
    ui->setupUi(this);

    log.setTextEdit(ui->logText);

    serialConnection.updateNameList(ui->serialPortsList);
    serialConnection.updateBaudRateList(ui->serialBaudRateList);

    connect(&serialConnection, &SerialConnection::receive,
            &dataManager, &DataManager::addNewData);

    connect(&dataManager, &DataManager::penetrationDepthChanged,
            this, &MainWindow::on_penDepthChange);
}

MainWindow::~MainWindow() {
    delete ui;
}

void MainWindow::on_serialPortsList_activated(const QString &arg1) {
    serialConnection.setName(arg1);
}

void MainWindow::on_serialBaudRateList_activated(const QString &arg1) {
    serialConnection.setBaudRate(arg1);
}

void MainWindow::on_serialConnect_clicked() {
    if(!serialConnection.isConnected()) {
        if(serialConnection.connect()) {
            ui->serialConnect->setText("Disconnect");
            ui->serialPortsList->setEnabled(false);
            ui->serialBaudRateList->setEnabled(false);
        }
    } else {
        serialConnection.disconnect();
        ui->serialConnect->setText("Connect");
        ui->serialPortsList->setEnabled(true);
        ui->serialBaudRateList->setEnabled(true);
    }
}

void MainWindow::on_penDepthChange() {
    ui->widget->setHeatProbePenDepth(dataManager.currentHeatProbePenDepth(0));
    ui->penetrationDepth1->display(QString::number(dataManager.currentHeatProbePenDepth(0), 'f', 1));

    ui->widget_2->setHeatProbePenDepth(dataManager.currentHeatProbePenDepth(1));
    ui->penetrationDepth1_2->display(QString::number(dataManager.currentHeatProbePenDepth(1), 'f', 1));

    ui->widget_3->setHeatProbePenDepth(dataManager.currentHeatProbePenDepth(2));
    ui->penetrationDepth1_3->display(QString::number(dataManager.currentHeatProbePenDepth(2), 'f', 1));
}
