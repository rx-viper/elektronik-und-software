#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <iostream>

#include "ExperimentStatus.hpp"

namespace viper
{

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
	ui(new Ui::MainWindow), backendConfigWidget(nullptr)
{
	ui->setupUi(this);
	connect(ui->connectDbButton, SIGNAL(clicked()), this, SIGNAL(connectDbClicked()));
	connect(ui->connectSerialButton, SIGNAL(clicked()), this, SIGNAL(connectSerialClicked()));
	connect(ui->testOnButton, SIGNAL(clicked()), this, SIGNAL(testOnClicked()));
	connect(ui->testOffButton, SIGNAL(clicked()), this, SIGNAL(testOffClicked()));
}

MainWindow::~MainWindow()
{
	delete ui;
}

void MainWindow::setBackendConfigWidget(BackendConfigWidget* widget)
{
	if(!widget) {
		return;
	}

	// TODO: fix this, this is a hack, removing is not possible
	ui->buttonFrame->layout()->addWidget(widget);
	backendConfigWidget = widget;
}

void MainWindow::updateUI(const ExperimentStatus& status)
{
	ui->iceTemperatureWidget1->setIceTemperatures(status.iceTemperatures(0));
	ui->iceTemperatureWidget2->setIceTemperatures(status.iceTemperatures(1));
	ui->iceTemperatureWidget3->setIceTemperatures(status.iceTemperatures(2));

	ui->hpDepthGraphic1->setHeatProbePenDepth(status.heatProbeDepth(0));
	ui->penetrationDepth1->display(QString::number(status.heatProbeDepth(0), 'f', 1));
	ui->hpDepthGraphic2->setHeatProbePenDepth(status.heatProbeDepth(1));
	ui->penetrationDepth2->display(QString::number(status.heatProbeDepth(1), 'f', 1));
	ui->hpDepthGraphic3->setHeatProbePenDepth(status.heatProbeDepth(2));
	ui->penetrationDepth3->display(QString::number(status.heatProbeDepth(2), 'f', 1));

	ui->hpCurrent1->display(QString::number(status.heatProbeCurrent(0)));
	ui->hpCurrent2->display(QString::number(status.heatProbeCurrent(1)));
	ui->hpCurrent3->display(QString::number(status.heatProbeCurrent(2)));

	ui->hpVoltage1->display(QString::number(status.heatProbeVoltage(0)));
	ui->hpVoltage2->display(QString::number(status.heatProbeVoltage(1)));
	ui->hpVoltage3->display(QString::number(status.heatProbeVoltage(2)));

	ui->hpTemp1->display(QString::number(status.heatProbeTemperature(0), 'f', 1));
	ui->hpTemp2->display(QString::number(status.heatProbeTemperature(1), 'f', 1));
	ui->hpTemp3->display(QString::number(status.heatProbeTemperature(2), 'f', 1));

	ui->pressure1->display(QString::number(status.pressure(0), 'f', 1));
	ui->pressure2->display(QString::number(status.pressure(1), 'f', 1));

	if(status.eventLineStatus().liftOff) {
		ui->loLabel->setText("LO: 1");
	} else {
		ui->loLabel->setText("LO: 0");
	}

	if(status.eventLineStatus().startOfExperiment) {
		ui->soeLabel->setText("SOE: 1");
	} else {
		ui->soeLabel->setText("SOE: 0");
	}

	if(status.eventLineStatus().startOfDataStorage) {
		ui->sodsLabel->setText("SODS: 1");
	} else {
		ui->sodsLabel->setText("SODS: 0");
	}

	ui->experimentIdLabel->setText("Experiment Id: " + QString::number(status.getExperimentId()));

	ui->testModeLabel->setText("Test mode: " + QString::number(status.testMode()));

	ui->timeLabel->setText("Time: " + QString::number(status.onboardUptime()));
	ui->motorLabel->setText("Motor Position: " + QString::number(status.motorPosition()));
	ui->motorCurrentLabel->setText("Motor Current: " + QString::number(status.motorCurrent()));
	ui->batteryVoltageLabel->setText("Battery Voltage: " + QString::number(status.batteryVoltage()));

	if(!status.heatProbeOvertemperature(0)) {
		ui->hpTemp1->setSegmentStyle(QLCDNumber::Flat);
	} else {
		ui->hpTemp1->setSegmentStyle(QLCDNumber::Outline);
	}

	if(!status.heatProbeOvertemperature(1)) {
		ui->hpTemp2->setSegmentStyle(QLCDNumber::Flat);
	} else {
		ui->hpTemp2->setSegmentStyle(QLCDNumber::Outline);
	}

	if(!status.heatProbeOvertemperature(2)) {
		ui->hpTemp3->setSegmentStyle(QLCDNumber::Flat);
	} else {
		ui->hpTemp3->setSegmentStyle(QLCDNumber::Outline);
	}

	// HP encoder: 360lpi, length: 45mm -> 640 ticks
	//std::cout << status.heatProbeDepth(0) << std::endl;
	//std::cout << status.heatProbeDepth(1) << std::endl;
	//std::cout << status.heatProbeDepth(2) << std::endl;
	ui->hpDepthGraphic1->setHeatProbePenDepth(52.f * status.heatProbeDepth(0) / 640.f);
	ui->hpDepthGraphic2->setHeatProbePenDepth(52.f * status.heatProbeDepth(1) / 640.f);
	ui->hpDepthGraphic3->setHeatProbePenDepth(52.f * status.heatProbeDepth(2) / 640.f);
}

void MainWindow::setSerialConnected(bool connected)
{
	if(backendConfigWidget)
		backendConfigWidget->setEnabled(!connected);

	if(connected) {
		ui->connectSerialButton->setText("Disconnect");
	} else {
		ui->connectSerialButton->setText("&Connect");
	}
}

}
