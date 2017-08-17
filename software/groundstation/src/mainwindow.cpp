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

    //Just for showing off.
    float Temperature[3][3] = {
      {-20, -18, 5},
      { -5, 0, 30},
      { -20, -15, 4}};

    drawIceTemperatures(ui->IceTemperatures1,Temperature);
    drawIceTemperatures(ui->IceTemperatures2,Temperature);
    drawIceTemperatures(ui->IceTemperatures3,Temperature);

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

//We expect a 3x3 Matrix with sensor values
void MainWindow::drawIceTemperatures(QCustomPlot *customPlot, float Temperatures[][3]) {
  // set up the QCPColorMap:
  QCPColorMap *colorMap = new QCPColorMap(customPlot->xAxis, customPlot->yAxis);
  colorMap->data()->setSize(3, 3);
  colorMap->data()->setRange(QCPRange(-10, 10), QCPRange(-10, 10));


  for(int x=0; x<3; ++x) {
    for(int y=0; y<3; ++y) {
        float T = Temperatures[x][y];
        colorMap->data()->setCell(x, y, T);
        colorMap->data()->setCell(x, y, T);
    }
  }

  // add a color scale:
  QCPColorScale *colorScale = new QCPColorScale(customPlot);
  customPlot->plotLayout()->addElement(0, 1, colorScale); // add it to the right of the main axis rect
  colorScale->setType(QCPAxis::atRight); // scale shall be vertical bar with tick/axis labels right (actually atRight is already the default)
  colorMap->setColorScale(colorScale); // associate the color map with the color scale
  colorScale->axis()->setLabel("Temperature [°C]");

  // set the color gradient of the color map to one of the presets:
  colorMap->setGradient(QCPColorGradient::gpThermal);
  // we could have also created a QCPColorGradient instance and added own colors to
  // the gradient, see the documentation of QCPColorGradient for what's possible.

  // rescale the data dimension (color) such that all data points lie in the span visualized by the color gradient:
  colorMap->rescaleDataRange();

  // make sure the axis rect and color scale synchronize their bottom and top margins (so they line up):
  QCPMarginGroup *marginGroup = new QCPMarginGroup(customPlot);
  customPlot->axisRect()->setMarginGroup(QCP::msBottom|QCP::msTop, marginGroup);
  colorScale->setMarginGroup(QCP::msBottom|QCP::msTop, marginGroup);

  // rescale the key (x) and value (y) axes so the whole color map is visible:
  customPlot->rescaleAxes();
}
