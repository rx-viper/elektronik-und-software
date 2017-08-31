#ifndef ICETEMPERATUREWIDGET_HPP
#define ICETEMPERATUREWIDGET_HPP

#include <QWidget>
#include <QVBoxLayout>
#include "qcustomplot.h"
#include "MeasurementData.hpp"

class IceTemperatureWidget : public QWidget
{
	Q_OBJECT
public:
	IceTemperatureWidget(QWidget* parent);

	void setIceTemperatures(const viper::IceTemperatures& iceTemperatures);
private:
	QVBoxLayout* layout;
	QCustomPlot* customPlot;
	QCPColorMap *colorMap;
};

#endif // ICETEMPERATUREWIDGET_HPP
