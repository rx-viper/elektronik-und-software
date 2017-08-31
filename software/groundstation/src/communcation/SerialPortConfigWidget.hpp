#ifndef SERIALPORTCONFIGWIDGET_HPP
#define SERIALPORTCONFIGWIDGET_HPP

#include "ui_SerialPortConfigWidget.h"

#include "BackendConfigWidget.hpp"

namespace viper {
	class SerialPortBackend;
}

using viper::SerialPortBackend;

class SerialPortConfigWidget : public BackendConfigWidget, private Ui::SerialPortConfigWidget
{
	Q_OBJECT

public:
	explicit SerialPortConfigWidget(SerialPortBackend& backend_, QWidget *parent = 0);

private:
	SerialPortBackend& backend;

	// BackendConfigWidget interface
public:
	void applyConfig() override;
	void reloadSavedSettings() override;
};

#endif // SERIALPORTCONFIGWIDGET_HPP
