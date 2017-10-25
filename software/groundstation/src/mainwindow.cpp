#include "mainwindow.h"
#include "ui_mainwindow.h"

#include "ExperimentStatus.hpp"

namespace viper
{

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
	ui(new Ui::MainWindow), backendConfigWidget(nullptr)
{
	ui->setupUi(this);
	connect(ui->connectButton, SIGNAL(clicked()), this, SIGNAL(connectClicked()));
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
	ui->frame->layout()->addWidget(widget);
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

	ui->hpTemp1->display(QString::number(status.heatProbeTemperature(0), 'f', 1));
	ui->hpTemp2->display(QString::number(status.heatProbeTemperature(1), 'f', 1));
	ui->hpTemp3->display(QString::number(status.heatProbeTemperature(2), 'f', 1));

	ui->pressure1->display(QString::number(status.pressure(), 'f', 1));
	ui->pressure2->display(QString::number(status.pressure(), 'f', 1));
	ui->pressure3->display(QString::number(status.pressure(), 'f', 1));

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
}

void MainWindow::setConnected(bool connected)
{
	if(backendConfigWidget)
		backendConfigWidget->setEnabled(!connected);

	if(connected) {
		ui->connectButton->setText("Disconnect");
	} else {
		ui->connectButton->setText("&Connect");
	}
}

}
