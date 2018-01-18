#ifndef ICETEMPERATUREWINDOW_HPP
#define ICETEMPERATUREWINDOW_HPP

#include "ui_IceTemperatureWindow.h"

#include "ExperimentStatus.hpp"

using viper::ExperimentStatus;

class IceTemperatureWindow : public QDialog, private Ui::IceTemperatureWindow
{
	Q_OBJECT

public:
	explicit IceTemperatureWindow(QWidget *parent = 0);
	void updateUI(ExperimentStatus& status);
};

#endif // ICETEMPERATUREWINDOW_HPP
