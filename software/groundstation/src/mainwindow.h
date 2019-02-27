#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include "icehppmgraphic.h"

#include <QMainWindow>
#include "qcustomplot.h"

#include "ExperimentStatus.hpp"

#include "communcation/BackendConfigWidget.hpp"

namespace Ui {
class MainWindow;
}

namespace viper
{

class MainWindow : public QMainWindow
{
	Q_OBJECT

public:
	explicit MainWindow(QWidget *parent = 0);
	~MainWindow();
	void setBackendConfigWidget(BackendConfigWidget* widget);

public slots:
	void updateUI(const ExperimentStatus& status);
	void setSerialConnected(bool connected);
	void setDbConnected(bool connected);

signals:
	void connectSerialClicked();
	void connectDbClicked();
	void testOnClicked();
	void testOffClicked();
	void closeWindow();

private:
	Ui::MainWindow* ui;
	BackendConfigWidget* backendConfigWidget;
	void closeEvent(QCloseEvent* e) override;
};

}

#endif // MAINWINDOW_H
