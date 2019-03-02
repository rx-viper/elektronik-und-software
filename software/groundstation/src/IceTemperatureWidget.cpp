#include "IceTemperatureWidget.hpp"

IceTemperatureWidget::IceTemperatureWidget(QWidget* parent) : QWidget(parent)
{
	layout = new QVBoxLayout(this);
	layout->setContentsMargins(0, 0, 0, 0);

	customPlot = new QCustomPlot;
	layout->addWidget(customPlot, Qt::AlignCenter);

	colorMap = new QCPColorMap(customPlot->xAxis, customPlot->yAxis);
	colorMap->data()->setSize(3, 3);
	colorMap->data()->setRange(QCPRange(-10, 10), QCPRange(-10, 10));

	for(int x=0; x<3; ++x) {
		for(int y=0; y<3; ++y) {
			colorMap->data()->setCell(x, y, 0);
		}
	}

	// add a color scale:
	QCPColorScale *colorScale = new QCPColorScale(customPlot);
	customPlot->plotLayout()->addElement(0, 1, colorScale); // add it to the right of the main axis rect
	colorScale->setType(QCPAxis::atRight); // scale shall be vertical bar with tick/axis labels right (actually atRight is already the default)
	colorMap->setColorScale(colorScale); // associate the color map with the color scale
	colorScale->axis()->setLabel("Temperature [°C]");
	colorScale->setDataRange(QCPRange(-80, 60));
	// set the color gradient of the color map to one of the presets:
	colorMap->setGradient(QCPColorGradient::gpThermal);
	// we could have also created a QCPColorGradient instance and added own colors to
	// the gradient, see the documentation of QCPColorGradient for what's possible.

	// make sure the axis rect and color scale synchronize their bottom and top margins (so they line up):
	QCPMarginGroup *marginGroup = new QCPMarginGroup(customPlot);
	customPlot->axisRect()->setMarginGroup(QCP::msBottom|QCP::msTop, marginGroup);
	colorScale->setMarginGroup(QCP::msBottom|QCP::msTop, marginGroup);

	// rescale the key (x) and value (y) axes so the whole color map is visible:
	customPlot->rescaleAxes();

}

void IceTemperatureWidget::setIceTemperatures(const viper::IceTemperatures& iceTemperatures)
{
	for(int x=0; x<3; ++x) {
		for(int y=0; y<3; ++y) {
			float temp = iceTemperatures(x, 2 - y) / 1024.f;
			colorMap->data()->setCell(x, y, temp);
		}
	}
	// rescale the key (x) and value (y) axes so the whole color map is visible:
	customPlot->rescaleAxes();

	customPlot->replot();
}
