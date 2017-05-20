#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "settingsdialog.h"

#include <QMessageBox>
#include <QLabel>
#include <QtSerialPort/QSerialPort>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent), ui(new Ui::MainWindow), dataManager(log) {
    ui->setupUi(this);

    log.setTextEdit(ui->logText);
    status.setStatusBar(ui->statusBar);

    serial = new QSerialPort(this);
    settings = new SettingsDialog;

    connect(serial, &QSerialPort::readyRead, this, &MainWindow::receiveSerialData);

    on_actionDisconnect_triggered();
}

MainWindow::~MainWindow() {
    delete settings;
    delete serial;
    delete ui;
}

void MainWindow::logAndStatus(const QString &message) {
    log.append(message);
    status.update(message);
}

void MainWindow::on_actionConnect_triggered() {
    SettingsDialog::Settings p = settings->settings();
    serial->setPortName(p.name);
    serial->setBaudRate(p.baudRate);
    serial->setDataBits(p.dataBits);
    serial->setParity(p.parity);
    serial->setStopBits(p.stopBits);
    serial->setFlowControl(p.flowControl);
    if (serial->open(QIODevice::ReadWrite)) {
        ui->actionConnect->setEnabled(false);
        ui->actionDisconnect->setEnabled(true);
        ui->actionSetup->setEnabled(false);

        logAndStatus(tr("Connected to %1 : %2, %3, %4, %5, %6")
                     .arg(p.name).arg(p.stringBaudRate).arg(p.stringDataBits)
                     .arg(p.stringParity).arg(p.stringStopBits).arg(p.stringFlowControl));
    } else {
        logAndStatus(tr("Open error: ") + serial->errorString());
    }
}

void MainWindow::on_actionDisconnect_triggered() {
    if (serial->isOpen())
        serial->close();
    ui->actionConnect->setEnabled(true);
    ui->actionDisconnect->setEnabled(false);
    ui->actionSetup->setEnabled(true);

    logAndStatus(tr("Disconnected"));
}

void MainWindow::on_actionSetup_triggered() {
    log.append("Setup clicked");

    settings->show();
}

void MainWindow::on_logAutoScroll_stateChanged(int arg1) {
    log.setAutoScroll(arg1 != 0);
}

void MainWindow::receiveSerialData() {
    dataManager.addNewData(serial->readAll());

    ui->widget->setHeatProbePenDepth(dataManager.currentHeatProbePenDepth(0));
    ui->penetrationDepth1->display(QString::number(dataManager.currentHeatProbePenDepth(0), 'f', 1));
    ui->widget_2->setHeatProbePenDepth(dataManager.currentHeatProbePenDepth(1));
    ui->penetrationDepth1_2->display(QString::number(dataManager.currentHeatProbePenDepth(1), 'f', 1));
    ui->widget_3->setHeatProbePenDepth(dataManager.currentHeatProbePenDepth(2));
    ui->penetrationDepth1_3->display(QString::number(dataManager.currentHeatProbePenDepth(2), 'f', 1));

}
