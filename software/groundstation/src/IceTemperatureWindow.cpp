#include "IceTemperatureWindow.hpp"

IceTemperatureWindow::IceTemperatureWindow(QWidget *parent) :
	QDialog(parent)
{
	setupUi(this);

	for(int row = 0; row < 3; ++row) {
		for(int column = 0; column < 9; ++column) {
			tempTable->setItem(row, column, new QTableWidgetItem());
		}
	}
}

void IceTemperatureWindow::updateUI(viper::ExperimentStatus& status)
{
	for(int iceContainer = 0; iceContainer < 3; ++iceContainer) {
		const auto& data = status.iceTemperatures(iceContainer);
		for(int row = 0; row < 3; ++row) {
			for(int column = 0; column < 3; ++column) {
				auto value = data(column, row) / 1024.0f;
				tempTable->item(row, column + iceContainer * 3)->setData(Qt::DisplayRole, value);
			}
		}
	}

	otherTemp1->display(status.otherTemperatures(0));
	otherTemp2->display(status.otherTemperatures(1));
	otherTemp3->display(status.otherTemperatures(2));
	otherTemp4->display(status.otherTemperatures(3));
	otherTemp5->display(status.otherTemperatures(4));
}
